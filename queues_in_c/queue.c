
/*
  Michael Xia
  1.18.2023
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "harness.h"
#include "queue.h"

/*
  Create empty queue.
  Return NULL if could not allocate space.
*/
queue_t *q_new()
{
  queue_t *q = malloc(sizeof(queue_t));
  // TODO check if malloc returned NULL (this means space could not be allocated)
  if (q == NULL)
  {
    return NULL;
  }
  else
  {
    q->head = NULL;
    // tail
    q->tail = NULL;
    q->size = 0;
    return q;
  }
}

/* Free all storage used by queue */
void q_free(queue_t *q)
{
  // What if q is NULL?
  if (q == NULL)
  {
    return;
  }
  if (q->head == NULL)
  {
    free(q);
    return;
  }
  // TODO free the queue nodes
  /* You'll want to loop through the list nodes until the next pointer is NULL,
   * starting at the head, freeing each node and its value.
   * Account for an empty list (head is NULL). */
  list_ele_t *ele = q->head;
  list_ele_t *ele2;
  while (ele->next != NULL)
  {
    free(ele->value);
    ele2 = ele->next;
    free(ele);
    ele = ele2;
  }
  free(ele->value);
  free(ele);
  // Freeing queue structure itself
  free(q);
}

list_ele_t *allocateNode(char *s)
{
  list_ele_t *new_node;

  new_node = malloc(sizeof(list_ele_t));

  if (new_node == NULL)
  {
    return NULL;
  }

  char *string = (char *)malloc(strlen(s) * sizeof(char) + 1);

  if (string == NULL)
  {
    free(new_node);
    return NULL;
  }

  strcpy(string, s);

  new_node->value = string;
  new_node->next = NULL;
  // do I need to initialize new_node->next to NULL?
  return new_node;
}

/*
  Attempt to insert element at head of queue.
  Return true if successful.
  Return false if q is NULL or could not allocate space.
  Argument s points to the string to be stored.
  The function must explicitly allocate space and copy the string into it.
 */
bool q_insert_head(queue_t *q, char *s)
{
  list_ele_t *new_node;
  // TODO Create a new node, copy the string s into its value.
  // allocates space on a the heap for the new node
  // TODO check if malloc returned NULL
  // TODO use malloc to allocate space for the value and copy s to value
  // If this second malloc call returns NULL, you need to free new_node before returning
  // TODO Hey wait a second. Aren't we also gonna do q_insert_tail? Should
  // we maybe write a utility function to allocate and return a new node so
  // we can reuse it there?
  if (q == NULL)
  {
    return false;
  }

  new_node = allocateNode(s);
  // TODO check if q is NULL; what should you do if so?
  if (new_node == NULL)
  {
    return false;
  }
  else
  {
    // TODO if the list was empty, the tail might also need updating, however it
    // is you're implementing the notion of tail.
    if (q->head == NULL)
    {
      q->head = new_node;
      q->tail = new_node;
    }
    else
    {
      // q->tail = q->head;
      new_node->next = q->head;
      q->head = new_node;
    }
    q->size = q->size + 1;
    return true;
  }
}

/*
  Attempt to insert element at tail of queue.
  Return true if successful.
  Return false if q is NULL or could not allocate space.
  Argument s points to the string to be stored.
  The function must explicitly allocate space and copy the string into it.
 */
bool q_insert_tail(queue_t *q, char *s)
{
  // TODO implement in similar fashion to q_insert_head
  // You'll certainly want to add a field to queue_t so we can access
  // the tail efficiently.

  list_ele_t *new_node;

  if (q == NULL)
  {
    return false;
  }

  new_node = allocateNode(s);
  if (new_node == NULL)
  {
    return false;
  }
  else
  {
    // TODO If the list was empty, the head might also need updating
    if (q->head == NULL)
    {
      q->tail = new_node;
      q->head = new_node;
    }
    else
    {
      // list_ele_t *ele = q->head;
      // while (ele->next != NULL)
      // {
      //   ele = ele->next;
      // }
      // ele->next = new_node;
      q->tail->next = new_node;
      q->tail = new_node;
      q->size = q->size + 1;
    }

    return true;
  }
}

/*
  Attempt to remove element from head of queue.
  Return true if successful.
  Return false if queue is NULL or empty.
  If sp is non-NULL and an element is removed, copy the removed string to *sp
  (up to a maximum of bufsize-1 characters, plus a null terminator.)
  The space used by the list element and the string should be freed.
*/
bool q_remove_head(queue_t *q, char *sp, size_t bufsize)
{
  // TODO check if q is NULL or empty
  // TODO if sp is not NULL, copy value at the head to sp
  // Use strncpy (http://www.cplusplus.com/reference/cstring/strncpy/)
  // bufsize is the number of characters already allocated for sp
  // Think about:
  //    - what should happen if q->head->value is longer than bufsize?
  //    - what should happen if bufsize == 0?
  //    - under what conditions will strncpy copy the \0 character
  //        into sp, and when will it fail to do so (so you'll have
  //        to insert a \0 manually)?
  if (q == NULL)
  {
    return false;
  }
  if (q->head == NULL)
  {
    return false;
  }

  if (sp == NULL)
  {
    return false;
  }
  else
  {
    // TODO check if bufsize large enough for head size.
    strncpy(sp, q->head->value, bufsize);
    // manually add in \0
    sp[bufsize - 1] = '\0';
  }
  // TODO check if bufsize large enough for head size.
  strncpy(sp, q->head->value, bufsize);
  // manually add in \0
  sp[bufsize - 1] = '\0';
  // TODO update q->head to remove the current head from the queue
  list_ele_t *head2 = q->head->next;
  free(q->head->value);
  free(q->head);
  q->head = head2;
  q->size = q->size - 1;
  // TODO hey, did you forget to free the removed list element?
  return true;
}

/*
  Return number of elements in queue.
  Return 0 if q is NULL or empty
 */
int q_size(queue_t *q)
{
  // TODO what if q == NULL or q->head == NULL?
  if (q == NULL || q->head == NULL)
  {
    return 0;
  }
  // TODO implement this function. If you add a field to queue_t
  // to keep track of the number of nodes in the queue, then this
  // function is fast-running and easy to write. But it also means
  // you have to be very careful about keeping track of the number
  // of nodes elsewhere in your code.
  else
  {
    return q->size;
  }
  // do we need to set size to 0 in free function?
}

/*
  Reverse elements in queue
  No effect if q is NULL or empty
  This function should not allocate or free any list elements
  (e.g., by calling q_insert_head, q_insert_tail, or q_remove_head).
  It should rearrange the existing ones.
 */
void q_reverse(queue_t *q)
{
  if (q == NULL)
  {
    return;
  }
  if (q->head == NULL)
  {
    return;
  }

  list_ele_t *node1 = q->head;
  list_ele_t *node2 = node1->next;
  list_ele_t *node3 = node2->next;

  node1->next = NULL;
  q->tail = node1;

  // node2->next = node1;
  // node3->next = node2;
  // q->head = node3;

  while (node2->next != NULL)
  {
    node2->next = node1;
    node1 = node2;
    node2 = node3;
    node3 = node2->next;
  }
  node2->next = node1;
  q->head = node2;
}
