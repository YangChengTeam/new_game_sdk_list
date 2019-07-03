.class Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$5;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->startTimerCount(J)V
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

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$5;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$5;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$1200(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl$5;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;->access$1300(Lcom/duoyou/gamesdk/c/view/floatwindow/IFloatWindowImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
