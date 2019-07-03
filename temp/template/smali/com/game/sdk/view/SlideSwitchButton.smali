.class public Lcom/game/sdk/view/SlideSwitchButton;
.super Landroid/view/View;
.source "SlideSwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;
    }
.end annotation


# instance fields
.field final SCALE:I

.field centerY:F

.field curX:F

.field isMove:Z

.field isOn:Z

.field lineColor:Ljava/lang/String;

.field lineEnd:F

.field lineStart:F

.field lineWidth:F

.field mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field onStateChangedListener:Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

.field radius:F

.field viewWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    .line 17
    iput-boolean v2, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->SCALE:I

    .line 28
    iput-boolean v2, p0, Lcom/game/sdk/view/SlideSwitchButton;->isMove:Z

    .line 30
    const-string v0, "f65d4a"

    iput-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineColor:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/game/sdk/view/SlideSwitchButton;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    .line 17
    iput-boolean v2, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->SCALE:I

    .line 28
    iput-boolean v2, p0, Lcom/game/sdk/view/SlideSwitchButton;->isMove:Z

    .line 30
    const-string v0, "f65d4a"

    iput-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineColor:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/game/sdk/view/SlideSwitchButton;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    .line 17
    iput-boolean v2, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->SCALE:I

    .line 28
    iput-boolean v2, p0, Lcom/game/sdk/view/SlideSwitchButton;->isMove:Z

    .line 30
    const-string v0, "f65d4a"

    iput-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineColor:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/game/sdk/view/SlideSwitchButton;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 149
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 152
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    iget v1, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineEnd:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineEnd:F

    :goto_0
    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    .line 153
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    iget v1, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineStart:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineStart:F

    :goto_1
    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    .line 156
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget v1, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineStart:F

    iget v2, p0, Lcom/game/sdk/view/SlideSwitchButton;->centerY:F

    iget v3, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    iget v4, p0, Lcom/game/sdk/view/SlideSwitchButton;->centerY:F

    iget-object v5, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 162
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#f2f5f5f5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget v1, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    iget v2, p0, Lcom/game/sdk/view/SlideSwitchButton;->centerY:F

    iget v3, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineEnd:F

    iget v4, p0, Lcom/game/sdk/view/SlideSwitchButton;->centerY:F

    iget-object v5, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 167
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#f2f5f5f5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineEnd:F

    iget v1, p0, Lcom/game/sdk/view/SlideSwitchButton;->centerY:F

    iget v2, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineWidth:F

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 170
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineStart:F

    iget v1, p0, Lcom/game/sdk/view/SlideSwitchButton;->centerY:F

    iget v2, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineWidth:F

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 173
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#e1e1e1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    iget v1, p0, Lcom/game/sdk/view/SlideSwitchButton;->centerY:F

    iget v2, p0, Lcom/game/sdk/view/SlideSwitchButton;->radius:F

    iget-object v3, p0, Lcom/game/sdk/view/SlideSwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 176
    return-void

    .line 152
    :cond_0
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    goto/16 :goto_0

    .line 153
    :cond_1
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 104
    invoke-virtual {p0}, Lcom/game/sdk/view/SlideSwitchButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/game/sdk/view/SlideSwitchButton;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/game/sdk/view/SlideSwitchButton;->setMeasuredDimension(II)V

    .line 105
    invoke-virtual {p0}, Lcom/game/sdk/view/SlideSwitchButton;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->viewWidth:F

    .line 106
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->viewWidth:F

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->radius:F

    .line 107
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineWidth:F

    .line 108
    iget-boolean v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->radius:F

    iget v1, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineWidth:F

    add-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    .line 109
    invoke-virtual {p0}, Lcom/game/sdk/view/SlideSwitchButton;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->centerY:F

    .line 110
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->radius:F

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineStart:F

    .line 111
    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lcom/game/sdk/view/SlideSwitchButton;->radius:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineEnd:F

    .line 112
    return-void

    .line 108
    :cond_0
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->radius:F

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 53
    iput-boolean v3, p0, Lcom/game/sdk/view/SlideSwitchButton;->isMove:Z

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 57
    iget-boolean v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->isMove:Z

    if-eqz v0, :cond_6

    .line 58
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    iget v1, p0, Lcom/game/sdk/view/SlideSwitchButton;->viewWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 59
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineEnd:F

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    .line 60
    iget-boolean v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    if-nez v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->onStateChangedListener:Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->onStateChangedListener:Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

    invoke-interface {v0, v3}, Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;->onStateChanged(Z)V

    .line 65
    :cond_1
    iput-boolean v3, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    .line 76
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/game/sdk/view/SlideSwitchButton;->isMove:Z

    .line 95
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/game/sdk/view/SlideSwitchButton;->postInvalidate()V

    .line 96
    return v3

    .line 68
    :cond_4
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineStart:F

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    .line 69
    iget-boolean v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->onStateChangedListener:Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

    if-eqz v0, :cond_5

    .line 71
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->onStateChangedListener:Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

    invoke-interface {v0, v4}, Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;->onStateChanged(Z)V

    .line 73
    :cond_5
    iput-boolean v4, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    goto :goto_0

    .line 78
    :cond_6
    iget-boolean v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    if-nez v0, :cond_8

    .line 79
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineEnd:F

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    .line 81
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->onStateChangedListener:Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

    if-eqz v0, :cond_7

    .line 82
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->onStateChangedListener:Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

    invoke-interface {v0, v3}, Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;->onStateChanged(Z)V

    .line 84
    :cond_7
    iput-boolean v3, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    goto :goto_1

    .line 86
    :cond_8
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineStart:F

    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    .line 87
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->onStateChangedListener:Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

    if-eqz v0, :cond_9

    .line 88
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->onStateChangedListener:Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

    invoke-interface {v0, v4}, Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;->onStateChanged(Z)V

    .line 90
    :cond_9
    iput-boolean v4, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    goto :goto_1
.end method

.method public setClickSwitchOpen()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    iget-boolean v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    .line 116
    iget-boolean v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->radius:F

    iget v3, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineWidth:F

    add-float/2addr v0, v3

    :goto_1
    iput v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->curX:F

    .line 118
    iget-boolean v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    if-nez v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->onStateChangedListener:Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->onStateChangedListener:Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

    invoke-interface {v0, v1}, Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;->onStateChanged(Z)V

    .line 131
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/game/sdk/view/SlideSwitchButton;->postInvalidate()V

    .line 132
    return-void

    :cond_1
    move v0, v2

    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iget v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->radius:F

    goto :goto_1

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->onStateChangedListener:Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/game/sdk/view/SlideSwitchButton;->onStateChangedListener:Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

    invoke-interface {v0, v2}, Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;->onStateChanged(Z)V

    goto :goto_2
.end method

.method public setLineColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "lineColor"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {p1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iput-object p1, p0, Lcom/game/sdk/view/SlideSwitchButton;->lineColor:Ljava/lang/String;

    .line 144
    :cond_0
    return-void
.end method

.method public setOnStateChangedListener(Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;)V
    .locals 0
    .param p1, "o"    # Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/game/sdk/view/SlideSwitchButton;->onStateChangedListener:Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;

    .line 181
    return-void
.end method

.method public setSwitchOpen(Z)V
    .locals 0
    .param p1, "isSwitch"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/game/sdk/view/SlideSwitchButton;->isOn:Z

    .line 137
    return-void
.end method
