.class Lcom/game91/framework/dialog/DialogWindow$1;
.super Ljava/lang/Object;
.source "DialogWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/dialog/DialogWindow;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/dialog/DialogWindow;


# direct methods
.method constructor <init>(Lcom/game91/framework/dialog/DialogWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/dialog/DialogWindow;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/game91/framework/dialog/DialogWindow$1;->this$0:Lcom/game91/framework/dialog/DialogWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "paramAnonymousDialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "paramAnonymousInt"    # I
    .param p3, "paramAnonymousKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 75
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/game91/framework/dialog/DialogWindow$1;->this$0:Lcom/game91/framework/dialog/DialogWindow;

    invoke-virtual {v0}, Lcom/game91/framework/dialog/DialogWindow;->onBackPressed()V

    .line 77
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/game91/framework/dialog/DialogWindow$1;->this$0:Lcom/game91/framework/dialog/DialogWindow;

    invoke-static {v0, p2, p3}, Lcom/game91/framework/dialog/DialogWindow;->access$000(Lcom/game91/framework/dialog/DialogWindow;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
