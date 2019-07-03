.class Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;-><init>(Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$2;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackToDesktop()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$2;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v0

    iget-boolean v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mDesktopShow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$2;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$2;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v0

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$2;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$100(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v0

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->mViewStateListener:Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/ViewStateListener;->onBackToDesktop()V

    :cond_1
    return-void
.end method

.method public onHide(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$2;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->hide()V

    return-void
.end method

.method public onShow(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$2;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->show(Landroid/app/Activity;)V

    return-void
.end method
