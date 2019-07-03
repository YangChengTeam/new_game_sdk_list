.class Lcom/game91/framework/drawable/FadingCircle$Dot;
.super Lcom/game91/framework/drawable/CircleSprite;
.source "FadingCircle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game91/framework/drawable/FadingCircle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Dot"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/drawable/FadingCircle;


# direct methods
.method constructor <init>(Lcom/game91/framework/drawable/FadingCircle;)V
    .locals 1

    .prologue
    .line 27
    iput-object p1, p0, Lcom/game91/framework/drawable/FadingCircle$Dot;->this$0:Lcom/game91/framework/drawable/FadingCircle;

    invoke-direct {p0}, Lcom/game91/framework/drawable/CircleSprite;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/game91/framework/drawable/FadingCircle$Dot;->setAlpha(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 33
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    .line 34
    .local v0, "fractions":[F
    new-instance v1, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;

    invoke-direct {v1, p0}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;-><init>(Lcom/game91/framework/drawable/Sprite;)V

    new-array v2, v2, [Ljava/lang/Integer;

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->alpha([F[Ljava/lang/Integer;)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;

    move-result-object v1

    const-wide/16 v2, 0x4b0

    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->duration(J)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->easeInOut([F)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->build()Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 34
    return-object v1

    .line 33
    :array_0
    .array-data 4
        0x0
        0x3ec7ae14    # 0.39f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method
