.class public Lcom/game91/framework/drawable/FadingCircle;
.super Lcom/game91/framework/drawable/CircleLayoutContainer;
.source "FadingCircle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/framework/drawable/FadingCircle$Dot;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/game91/framework/drawable/CircleLayoutContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic drawChild(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/game91/framework/drawable/CircleLayoutContainer;->drawChild(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onCreateChild()[Lcom/game91/framework/drawable/Sprite;
    .locals 4

    .prologue
    .line 13
    const/16 v2, 0xc

    new-array v0, v2, [Lcom/game91/framework/drawable/FadingCircle$Dot;

    .line 14
    .local v0, "dots":[Lcom/game91/framework/drawable/FadingCircle$Dot;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 15
    new-instance v2, Lcom/game91/framework/drawable/FadingCircle$Dot;

    invoke-direct {v2, p0}, Lcom/game91/framework/drawable/FadingCircle$Dot;-><init>(Lcom/game91/framework/drawable/FadingCircle;)V

    aput-object v2, v0, v1

    .line 16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 17
    aget-object v2, v0, v1

    mul-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Lcom/game91/framework/drawable/FadingCircle$Dot;->setAnimationDelay(I)Lcom/game91/framework/drawable/Sprite;

    .line 14
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_0
    aget-object v2, v0, v1

    mul-int/lit8 v3, v1, 0x64

    add-int/lit16 v3, v3, -0x4b0

    invoke-virtual {v2, v3}, Lcom/game91/framework/drawable/FadingCircle$Dot;->setAnimationDelay(I)Lcom/game91/framework/drawable/Sprite;

    goto :goto_1

    .line 22
    :cond_1
    return-object v0
.end method
