.class public Lcom/game/sdk/view/NewTextView;
.super Landroid/widget/EditText;
.source "NewTextView.java"


# instance fields
.field private off:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcom/game/sdk/view/NewTextView;->initialize()V

    .line 18
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/game/sdk/view/NewTextView;->setGravity(I)V

    .line 22
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/game/sdk/view/NewTextView;->setBackgroundColor(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public getDefaultEditable()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 28
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 38
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/game/sdk/view/NewTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 39
    .local v2, "layout":Landroid/text/Layout;
    const/4 v3, 0x0

    .line 40
    .local v3, "line":I
    packed-switch v0, :pswitch_data_0

    .line 53
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 42
    :pswitch_0
    invoke-virtual {p0}, Lcom/game/sdk/view/NewTextView;->getScrollY()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    iput v4, p0, Lcom/game/sdk/view/NewTextView;->off:I

    .line 44
    invoke-virtual {p0}, Lcom/game/sdk/view/NewTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    iget v5, p0, Lcom/game/sdk/view/NewTextView;->off:I

    invoke-static {v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 48
    :pswitch_1
    invoke-virtual {p0}, Lcom/game/sdk/view/NewTextView;->getScrollY()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    .line 50
    .local v1, "curOff":I
    invoke-virtual {p0}, Lcom/game/sdk/view/NewTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    iget v5, p0, Lcom/game/sdk/view/NewTextView;->off:I

    invoke-static {v4, v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
