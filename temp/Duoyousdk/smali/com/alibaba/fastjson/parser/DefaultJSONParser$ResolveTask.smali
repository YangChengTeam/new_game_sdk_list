.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/parser/DefaultJSONParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolveTask"
.end annotation


# instance fields
.field public final context:Lcom/alibaba/fastjson/parser/ParseContext;

.field public fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field public ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

.field public final referenceValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/ParseContext;
    .param p2, "referenceValue"    # Ljava/lang/String;

    .prologue
    .line 1452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1453
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1454
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->referenceValue:Ljava/lang/String;

    .line 1455
    return-void
.end method
