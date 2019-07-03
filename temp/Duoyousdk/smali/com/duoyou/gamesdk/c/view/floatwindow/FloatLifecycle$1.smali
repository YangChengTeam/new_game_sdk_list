.class Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->access$000(Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->access$102(Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;Z)Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle$1;->this$0:Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;->access$200(Lcom/duoyou/gamesdk/c/view/floatwindow/FloatLifecycle;)Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/LifecycleListener;->onBackToDesktop()V

    :cond_0
    return-void
.end method
