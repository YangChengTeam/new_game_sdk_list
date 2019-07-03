.class Lcom/game/sdk/floatwindow/FloatViewImpl$1;
.super Ljava/lang/Object;
.source "FloatViewImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/floatwindow/FloatViewImpl;
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
    iput-object p1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$1;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$1;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-static {v2}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$0(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current speed ->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/game/sdk/floatwindow/FloatViewImpl;->speed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$1;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-static {v1}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$1(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v1, :cond_0

    .line 368
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$1;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-static {v1}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/game/sdk/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 370
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$1;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-static {v1}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 371
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$1;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$3(Lcom/game/sdk/floatwindow/FloatViewImpl;Z)V

    .line 372
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$1;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-virtual {v1}, Lcom/game/sdk/floatwindow/FloatViewImpl;->removeFloat()V

    .line 377
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
