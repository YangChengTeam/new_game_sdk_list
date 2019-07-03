.class public final Lcom/ipaynow/plugin/view/b/g;
.super Ljava/lang/Object;


# static fields
.field public static final base_template_body_top_id:I

.field public static final body_content_title_id:I

.field public static final header_title_id:I

.field public static final root_body_linear_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/view/c/d;->generateViewId()I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/view/b/g;->header_title_id:I

    invoke-static {}, Lcom/ipaynow/plugin/view/c/d;->generateViewId()I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/view/b/g;->root_body_linear_id:I

    invoke-static {}, Lcom/ipaynow/plugin/view/c/d;->generateViewId()I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/view/b/g;->base_template_body_top_id:I

    invoke-static {}, Lcom/ipaynow/plugin/view/c/d;->generateViewId()I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/view/b/g;->body_content_title_id:I

    return-void
.end method
