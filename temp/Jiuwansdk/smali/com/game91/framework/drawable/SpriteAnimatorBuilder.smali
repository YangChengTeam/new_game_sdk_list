.class public Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
.super Ljava/lang/Object;
.source "SpriteAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FloatFrameData;,
        Lcom/game91/framework/drawable/SpriteAnimatorBuilder$IntFrameData;,
        Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpriteAnimatorBuilder"


# instance fields
.field private duration:J

.field private fds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;",
            ">;"
        }
    .end annotation
.end field

.field private interpolator:Landroid/view/animation/Interpolator;

.field private repeatCount:I

.field private sprite:Lcom/game91/framework/drawable/Sprite;

.field private startFrame:I


# direct methods
.method public constructor <init>(Lcom/game91/framework/drawable/Sprite;)V
    .locals 2
    .param p1, "sprite"    # Lcom/game91/framework/drawable/Sprite;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->repeatCount:I

    .line 24
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->duration:J

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->startFrame:I

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->fds:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->sprite:Lcom/game91/framework/drawable/Sprite;

    .line 57
    return-void
.end method

.method private ensurePair(II)V
    .locals 6
    .param p1, "fractionsLength"    # I
    .param p2, "valuesLength"    # I

    .prologue
    .line 131
    if-eq p1, p2, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 133
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "The fractions.length must equal values.length, fraction.length[%d], values.length[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 132
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    return-void
.end method

.method private holder([FLandroid/util/Property;[Ljava/lang/Float;)V
    .locals 3
    .param p1, "fractions"    # [F
    .param p2, "property"    # Landroid/util/Property;
    .param p3, "values"    # [Ljava/lang/Float;

    .prologue
    .line 120
    array-length v0, p1

    array-length v1, p3

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->ensurePair(II)V

    .line 121
    iget-object v0, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->fds:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FloatFrameData;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FloatFrameData;-><init>(Lcom/game91/framework/drawable/SpriteAnimatorBuilder;[FLandroid/util/Property;[Ljava/lang/Float;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method private holder([FLandroid/util/Property;[Ljava/lang/Integer;)V
    .locals 3
    .param p1, "fractions"    # [F
    .param p2, "property"    # Landroid/util/Property;
    .param p3, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 126
    array-length v0, p1

    array-length v1, p3

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->ensurePair(II)V

    .line 127
    iget-object v0, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->fds:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$IntFrameData;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$IntFrameData;-><init>(Lcom/game91/framework/drawable/SpriteAnimatorBuilder;[FLandroid/util/Property;[Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method


# virtual methods
.method public varargs alpha([F[Ljava/lang/Integer;)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 1
    .param p1, "fractions"    # [F
    .param p2, "alpha"    # [Ljava/lang/Integer;

    .prologue
    .line 65
    sget-object v0, Lcom/game91/framework/drawable/Sprite;->ALPHA:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Integer;)V

    .line 66
    return-object p0
.end method

.method public build()Landroid/animation/ObjectAnimator;
    .locals 15

    .prologue
    .line 177
    iget-object v12, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->fds:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    new-array v5, v12, [Landroid/animation/PropertyValuesHolder;

    .line 178
    .local v5, "holders":[Landroid/animation/PropertyValuesHolder;
    const/4 v6, 0x0

    .line 179
    .local v6, "i":I
    iget-object v12, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->fds:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 180
    .local v2, "fd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;

    .line 181
    .local v1, "data":Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;
    iget-object v12, v1, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;->fractions:[F

    array-length v12, v12

    new-array v9, v12, [Landroid/animation/Keyframe;

    .line 182
    .local v9, "keyframes":[Landroid/animation/Keyframe;
    iget-object v4, v1, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;->fractions:[F

    .line 183
    .local v4, "fractions":[F
    iget v12, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->startFrame:I

    aget v10, v4, v12

    .line 184
    .local v10, "startF":F
    iget v7, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->startFrame:I

    .local v7, "j":I
    :goto_1
    iget v12, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->startFrame:I

    iget-object v14, v1, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;->values:[Ljava/lang/Object;

    array-length v14, v14

    add-int/2addr v12, v14

    if-ge v7, v12, :cond_3

    .line 185
    iget v12, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->startFrame:I

    sub-int v8, v7, v12

    .line 186
    .local v8, "key":I
    iget-object v12, v1, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;->values:[Ljava/lang/Object;

    array-length v12, v12

    rem-int v11, v7, v12

    .line 187
    .local v11, "vk":I
    aget v12, v4, v11

    sub-float v3, v12, v10

    .line 188
    .local v3, "fraction":F
    const/4 v12, 0x0

    cmpg-float v12, v3, v12

    if-gez v12, :cond_0

    .line 189
    array-length v12, v4

    add-int/lit8 v12, v12, -0x1

    aget v12, v4, v12

    add-float/2addr v3, v12

    .line 191
    :cond_0
    instance-of v12, v1, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$IntFrameData;

    if-eqz v12, :cond_1

    .line 192
    iget-object v12, v1, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;->values:[Ljava/lang/Object;

    aget-object v12, v12, v11

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v3, v12}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v12

    aput-object v12, v9, v8

    .line 184
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 193
    :cond_1
    instance-of v12, v1, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FloatFrameData;

    if-eqz v12, :cond_2

    .line 194
    iget-object v12, v1, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;->values:[Ljava/lang/Object;

    aget-object v12, v12, v11

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v3, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    aput-object v12, v9, v8

    goto :goto_2

    .line 196
    :cond_2
    iget-object v12, v1, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;->values:[Ljava/lang/Object;

    aget-object v12, v12, v11

    invoke-static {v3, v12}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v12

    aput-object v12, v9, v8

    goto :goto_2

    .line 199
    .end local v3    # "fraction":F
    .end local v8    # "key":I
    .end local v11    # "vk":I
    :cond_3
    iget-object v12, v1, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;->property:Landroid/util/Property;

    invoke-static {v12, v9}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    aput-object v12, v5, v6

    .line 200
    add-int/lit8 v6, v6, 0x1

    .line 201
    goto :goto_0

    .line 203
    .end local v1    # "data":Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;
    .end local v2    # "fd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;>;"
    .end local v4    # "fractions":[F
    .end local v7    # "j":I
    .end local v9    # "keyframes":[Landroid/animation/Keyframe;
    .end local v10    # "startF":F
    :cond_4
    iget-object v12, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->sprite:Lcom/game91/framework/drawable/Sprite;

    invoke-static {v12, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 205
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-wide v12, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->duration:J

    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 206
    iget v12, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->repeatCount:I

    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 207
    iget-object v12, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 208
    return-object v0
.end method

.method public duration(J)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->duration:J

    .line 157
    return-object p0
.end method

.method public varargs easeInOut([F)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 1
    .param p1, "fractions"    # [F

    .prologue
    .line 148
    invoke-static {p1}, Lcom/game91/framework/drawable/KeyFrameInterpolator;->easeInOut([F)Lcom/game91/framework/drawable/KeyFrameInterpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->interpolator(Landroid/view/animation/Interpolator;)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;

    .line 151
    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->interpolator:Landroid/view/animation/Interpolator;

    .line 144
    return-object p0
.end method

.method public repeatCount(I)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 0
    .param p1, "repeatCount"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->repeatCount:I

    .line 163
    return-object p0
.end method

.method public varargs rotate([F[Ljava/lang/Integer;)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 1
    .param p1, "fractions"    # [F
    .param p2, "rotate"    # [Ljava/lang/Integer;

    .prologue
    .line 105
    sget-object v0, Lcom/game91/framework/drawable/Sprite;->ROTATE:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Integer;)V

    .line 106
    return-object p0
.end method

.method public varargs rotateX([F[Ljava/lang/Integer;)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 1
    .param p1, "fractions"    # [F
    .param p2, "rotateX"    # [Ljava/lang/Integer;

    .prologue
    .line 81
    sget-object v0, Lcom/game91/framework/drawable/Sprite;->ROTATE_X:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Integer;)V

    .line 82
    return-object p0
.end method

.method public varargs rotateY([F[Ljava/lang/Integer;)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 1
    .param p1, "fractions"    # [F
    .param p2, "rotateY"    # [Ljava/lang/Integer;

    .prologue
    .line 86
    sget-object v0, Lcom/game91/framework/drawable/Sprite;->ROTATE_Y:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Integer;)V

    .line 87
    return-object p0
.end method

.method public varargs scale([F[Ljava/lang/Float;)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 1
    .param p1, "fractions"    # [F
    .param p2, "scale"    # [Ljava/lang/Float;

    .prologue
    .line 60
    sget-object v0, Lcom/game91/framework/drawable/Sprite;->SCALE:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Float;)V

    .line 61
    return-object p0
.end method

.method public varargs scaleX([F[Ljava/lang/Float;)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 1
    .param p1, "fractions"    # [F
    .param p2, "scaleX"    # [Ljava/lang/Float;

    .prologue
    .line 71
    sget-object v0, Lcom/game91/framework/drawable/Sprite;->SCALE:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Float;)V

    .line 72
    return-object p0
.end method

.method public varargs scaleY([F[Ljava/lang/Float;)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 1
    .param p1, "fractions"    # [F
    .param p2, "scaleY"    # [Ljava/lang/Float;

    .prologue
    .line 76
    sget-object v0, Lcom/game91/framework/drawable/Sprite;->SCALE_Y:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Float;)V

    .line 77
    return-object p0
.end method

.method public startFrame(I)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 0
    .param p1, "startFrame"    # I

    .prologue
    .line 167
    if-gez p1, :cond_0

    .line 169
    const/4 p1, 0x0

    .line 171
    :cond_0
    iput p1, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->startFrame:I

    .line 172
    return-object p0
.end method

.method public varargs translateX([F[Ljava/lang/Integer;)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 1
    .param p1, "fractions"    # [F
    .param p2, "translateX"    # [Ljava/lang/Integer;

    .prologue
    .line 92
    sget-object v0, Lcom/game91/framework/drawable/Sprite;->TRANSLATE_X:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Integer;)V

    .line 93
    return-object p0
.end method

.method public varargs translateXPercentage([F[Ljava/lang/Float;)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 1
    .param p1, "fractions"    # [F
    .param p2, "translateXPercentage"    # [Ljava/lang/Float;

    .prologue
    .line 110
    sget-object v0, Lcom/game91/framework/drawable/Sprite;->TRANSLATE_X_PERCENTAGE:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Float;)V

    .line 111
    return-object p0
.end method

.method public varargs translateY([F[Ljava/lang/Integer;)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 1
    .param p1, "fractions"    # [F
    .param p2, "translateY"    # [Ljava/lang/Integer;

    .prologue
    .line 99
    sget-object v0, Lcom/game91/framework/drawable/Sprite;->TRANSLATE_Y:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Integer;)V

    .line 100
    return-object p0
.end method

.method public varargs translateYPercentage([F[Ljava/lang/Float;)Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .locals 1
    .param p1, "fractions"    # [F
    .param p2, "translateYPercentage"    # [Ljava/lang/Float;

    .prologue
    .line 115
    sget-object v0, Lcom/game91/framework/drawable/Sprite;->TRANSLATE_Y_PERCENTAGE:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Float;)V

    .line 116
    return-object p0
.end method
