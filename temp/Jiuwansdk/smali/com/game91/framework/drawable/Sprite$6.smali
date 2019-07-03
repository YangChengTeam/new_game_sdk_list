.class final Lcom/game91/framework/drawable/Sprite$6;
.super Lcom/game91/framework/drawable/FloatProperty;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game91/framework/drawable/Sprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game91/framework/drawable/FloatProperty",
        "<",
        "Lcom/game91/framework/drawable/Sprite;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/game91/framework/drawable/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/game91/framework/drawable/Sprite;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/game91/framework/drawable/Sprite;

    .prologue
    .line 386
    invoke-virtual {p1}, Lcom/game91/framework/drawable/Sprite;->getTranslateXPercentage()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 378
    check-cast p1, Lcom/game91/framework/drawable/Sprite;

    invoke-virtual {p0, p1}, Lcom/game91/framework/drawable/Sprite$6;->get(Lcom/game91/framework/drawable/Sprite;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/game91/framework/drawable/Sprite;F)V
    .locals 0
    .param p1, "object"    # Lcom/game91/framework/drawable/Sprite;
    .param p2, "value"    # F

    .prologue
    .line 381
    invoke-virtual {p1, p2}, Lcom/game91/framework/drawable/Sprite;->setTranslateXPercentage(F)V

    .line 382
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 378
    check-cast p1, Lcom/game91/framework/drawable/Sprite;

    invoke-virtual {p0, p1, p2}, Lcom/game91/framework/drawable/Sprite$6;->setValue(Lcom/game91/framework/drawable/Sprite;F)V

    return-void
.end method
