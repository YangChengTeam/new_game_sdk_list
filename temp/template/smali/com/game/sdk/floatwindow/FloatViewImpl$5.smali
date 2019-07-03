.class Lcom/game/sdk/floatwindow/FloatViewImpl$5;
.super Ljava/lang/Object;
.source "FloatViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/floatwindow/FloatViewImpl;->setHolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;


# direct methods
.method constructor <init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$5;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$5;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-static {v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$14(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$5;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3(Lcom/game/sdk/floatwindow/FloatViewImpl;Z)V

    .line 334
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$5;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    const-string v1, "float_holder"

    invoke-static {v0, v1}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$11(Lcom/game/sdk/floatwindow/FloatViewImpl;Ljava/lang/String;)V

    .line 336
    :cond_0
    return-void
.end method
