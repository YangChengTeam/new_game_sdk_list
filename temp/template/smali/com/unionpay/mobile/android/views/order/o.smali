.class public final Lcom/unionpay/mobile/android/views/order/o;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/views/order/o$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Lorg/json/JSONObject;

.field private e:Lorg/json/JSONObject;

.field private f:Lorg/json/JSONObject;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Lorg/json/JSONArray;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

.field private l:Lcom/unionpay/mobile/android/views/order/CViewMethods;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/views/order/o;->setOrientation(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;
    .locals 1

    new-instance v0, Lcom/unionpay/mobile/android/views/order/o;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/views/order/o;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/unionpay/mobile/android/views/order/o;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;
    .locals 2

    new-instance v0, Lcom/unionpay/mobile/android/views/order/o;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/views/order/o;-><init>(Landroid/content/Context;)V

    iput-object p2, v0, Lcom/unionpay/mobile/android/views/order/o;->m:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    iput-object p1, v0, Lcom/unionpay/mobile/android/views/order/o;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/views/order/o;->c()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ")",
            "Lcom/unionpay/mobile/android/views/order/o;"
        }
    .end annotation

    new-instance v0, Lcom/unionpay/mobile/android/views/order/o;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/views/order/o;-><init>(Landroid/content/Context;)V

    iput-object p4, v0, Lcom/unionpay/mobile/android/views/order/o;->m:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    iput-object p3, v0, Lcom/unionpay/mobile/android/views/order/o;->g:Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lcom/unionpay/mobile/android/views/order/o;->h:Lorg/json/JSONArray;

    iput-object p2, v0, Lcom/unionpay/mobile/android/views/order/o;->i:Ljava/util/List;

    iput-object p5, v0, Lcom/unionpay/mobile/android/views/order/o;->j:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/views/order/o;->c()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lorg/json/JSONArray;Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ")",
            "Lcom/unionpay/mobile/android/views/order/o;"
        }
    .end annotation

    new-instance v0, Lcom/unionpay/mobile/android/views/order/o;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/views/order/o;-><init>(Landroid/content/Context;)V

    iput-object p4, v0, Lcom/unionpay/mobile/android/views/order/o;->m:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    iput-object p3, v0, Lcom/unionpay/mobile/android/views/order/o;->g:Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lcom/unionpay/mobile/android/views/order/o;->h:Lorg/json/JSONArray;

    iput-object p2, v0, Lcom/unionpay/mobile/android/views/order/o;->i:Ljava/util/List;

    iput-object p5, v0, Lcom/unionpay/mobile/android/views/order/o;->j:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/views/order/o;->c()V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    return v0
.end method

.method public final a(I)Lcom/unionpay/mobile/android/views/order/o;
    .locals 0

    iput p1, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    return-object p0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final a(Lcom/unionpay/mobile/android/views/order/o$a;)Lcom/unionpay/mobile/android/views/order/o;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->a(Lcom/unionpay/mobile/android/views/order/AbstractMethod$b;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->a(Lcom/unionpay/mobile/android/views/order/AbstractMethod$a;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    instance-of v0, v0, Lcom/unionpay/mobile/android/views/order/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    check-cast v0, Lcom/unionpay/mobile/android/views/order/b;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/views/order/b;->a(Lcom/unionpay/mobile/android/views/order/b$b;)Lcom/unionpay/mobile/android/views/order/b;

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Lcom/unionpay/mobile/android/views/order/CViewMethods$a;)Lcom/unionpay/mobile/android/views/order/CViewMethods;

    :cond_1
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/o;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/unionpay/mobile/android/views/order/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/unionpay/mobile/android/views/order/o;"
        }
    .end annotation

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->i:Ljava/util/List;

    return-object p0
.end method

.method public final a(Lorg/json/JSONArray;)Lcom/unionpay/mobile/android/views/order/o;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->h:Lorg/json/JSONArray;

    return-object p0
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/o;
    .locals 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->d:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    instance-of v0, v0, Lcom/unionpay/mobile/android/views/order/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    check-cast v0, Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/b;

    :cond_0
    return-object p0
.end method

.method public final a(Z)Lcom/unionpay/mobile/android/views/order/o;
    .locals 0

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/views/order/o;->n:Z

    return-object p0
.end method

.method public final b(I)Lcom/unionpay/mobile/android/views/order/o;
    .locals 0

    iput p1, p0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    return-object p0
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/o;
    .locals 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->e:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    instance-of v0, v0, Lcom/unionpay/mobile/android/views/order/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    check-cast v0, Lcom/unionpay/mobile/android/views/order/i;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/i;

    :cond_0
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    instance-of v1, v1, Lcom/unionpay/mobile/android/views/order/i;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    check-cast v0, Lcom/unionpay/mobile/android/views/order/i;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/views/order/i;->h()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    check-cast v0, Lcom/unionpay/mobile/android/views/order/b;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/views/order/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/o;
    .locals 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->f:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    instance-of v0, v0, Lcom/unionpay/mobile/android/views/order/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    check-cast v0, Lcom/unionpay/mobile/android/views/order/i;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->b(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/i;

    :cond_0
    return-object p0
.end method

.method public final c()V
    .locals 9

    const/16 v8, 0x3f8

    const/16 v7, 0x3f7

    const/16 v6, 0x3ea

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    iget v0, p0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    new-instance v0, Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/o;->i:Ljava/util/List;

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/o;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/unionpay/mobile/android/views/order/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->by:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->d(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/b;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->e(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->h:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->a(Lorg/json/JSONArray;)Lcom/unionpay/mobile/android/views/order/b;

    iget-boolean v1, p0, Lcom/unionpay/mobile/android/views/order/o;->n:Z

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->b(Z)Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v1

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->b(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v8}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v6}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/unionpay/mobile/android/views/order/b;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/b;

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->a()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/b;->a:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/views/order/o;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget v0, p0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    new-instance v0, Lcom/unionpay/mobile/android/views/order/i;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->b(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/i;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->d(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/i;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/i;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->b(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/i;

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    new-instance v0, Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/o;->i:Ljava/util/List;

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/unionpay/mobile/android/views/order/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->d(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/b;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->e(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->h:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->a(Lorg/json/JSONArray;)Lcom/unionpay/mobile/android/views/order/b;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->b(I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v1

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->b(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v8}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v6}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/unionpay/mobile/android/views/order/b;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/b;

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/unionpay/mobile/android/views/order/CViewMethods;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unionpay/mobile/android/views/order/CViewMethods;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/CViewMethods;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    iget v1, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(I)Lcom/unionpay/mobile/android/views/order/CViewMethods;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->by:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bp:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->d:Ljava/lang/Integer;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->bp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->bA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->br:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->br:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->br:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->f:Ljava/lang/Integer;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->bt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Ljava/util/HashMap;)Lcom/unionpay/mobile/android/views/order/CViewMethods;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->d:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->f:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->b(Ljava/util/HashMap;)Lcom/unionpay/mobile/android/views/order/CViewMethods;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/CViewMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/views/order/o;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_5
    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->d:Ljava/lang/Integer;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->bo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->bq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    instance-of v0, v0, Lcom/unionpay/mobile/android/views/order/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    check-cast v0, Lcom/unionpay/mobile/android/views/order/b;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/views/order/b;->a(I)V

    :cond_0
    return-void
.end method
