.class Lcom/game/sdk/floatwindow/FloatViewImpl$3;
.super Ljava/lang/Object;
.source "FloatViewImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/floatwindow/FloatViewImpl;->animate(IIII)V
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
    iput-object p1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$3;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 264
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x"

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 265
    .local v1, "x":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "y"

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 266
    .local v2, "y":I
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$4()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 267
    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$4()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 268
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$3;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-static {v3}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$6(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/game/sdk/floatwindow/FloatViewImpl$3;->this$0:Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-static {v4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$12(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {}, Lcom/game/sdk/floatwindow/FloatViewImpl;->access$4()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v1    # "x":I
    .end local v2    # "y":I
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
