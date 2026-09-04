.class public final Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;
.super Ljava/lang/Object;
.source "NwWebDAVRequest.kt"

# interfaces
.implements Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$InnerParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PropPatchResponseParser"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNwWebDAVRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NwWebDAVRequest.kt\ncom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1281:1\n742#2,9:1282\n37#3,2:1291\n1#4:1293\n*S KotlinDebug\n*F\n+ 1 NwWebDAVRequest.kt\ncom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser\n*L\n932#1:1282,9\n932#1:1291,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J0\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J$\u0010\u000c\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;",
        "Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$InnerParser;",
        "<init>",
        "(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)V",
        "startElement",
        "",
        "namespaceURI",
        "",
        "elementName",
        "qName",
        "attributes",
        "Lorg/xml/sax/Attributes;",
        "endElement",
        "network"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;


# direct methods
.method public constructor <init>(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 915
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p3, "elementName"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 928
    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    const-string v0, "prop"

    invoke-static {p3, p2, p1, v0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$isDAVElement(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 929
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 928
    invoke-static {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;I)V

    goto/16 :goto_2

    .line 929
    :cond_0
    const-string/jumbo p3, "status"

    invoke-static {v0, p2, p1, p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$isDAVElement(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 938
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    .line 929
    const-string/jumbo v2, "toString(...)"

    if-eqz p3, :cond_3

    .line 930
    invoke-static {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;I)V

    .line 932
    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_xmlChars(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    new-instance p3, Lkotlin/text/Regex;

    const-string v0, " "

    invoke-direct {p3, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    .line 1282
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_2

    .line 1283
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p1, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    .line 1284
    :goto_0
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1285
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 932
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1286
    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/util/ListIterator;->nextIndex()I

    move-result p3

    add-int/2addr p3, v0

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 1290
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/util/Collection;

    .line 1292
    new-array p3, v1, [Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 932
    check-cast p1, [Ljava/lang/String;

    .line 933
    array-length p3, p1

    if-le p3, v0, :cond_5

    .line 934
    aget-object p1, p1, v0

    .line 935
    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_proppatchResponsesBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 938
    :cond_3
    const-string p3, "href"

    invoke-static {v0, p2, p1, p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$isDAVElement(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 943
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    if-eqz p3, :cond_4

    .line 938
    invoke-static {v0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_xmlChars(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/lang/StringBuilder;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 939
    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_xmlChars(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    iget-object p2, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p2}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_proppatchResponsesBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_multiResponses(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 943
    :cond_4
    invoke-static {v0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p3, p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$isMetaMoJiPropNamespaceURI(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 944
    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p1, p2}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_proppatchStatKeyName$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;)V

    .line 947
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)I

    move-result p1

    if-lez p1, :cond_6

    .line 948
    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)I

    move-result p1

    iget-object p2, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    add-int/lit8 p1, p1, -0x1

    invoke-static {p2, p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;I)V

    :cond_6
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 917
    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)I

    move-result p3

    const/4 p4, 0x1

    if-lez p3, :cond_0

    .line 918
    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)I

    move-result p3

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    add-int/2addr p3, p4

    invoke-static {v0, p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;I)V

    .line 920
    :cond_0
    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    const-string v0, "response"

    invoke-static {p3, p2, p1, v0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$isDAVElement(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 921
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    .line 920
    invoke-static {v0, p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_proppatchResponsesBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/util/Map;)V

    return-void

    .line 921
    :cond_1
    const-string p3, "prop"

    invoke-static {v0, p2, p1, p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$isDAVElement(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 922
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    if-eqz p3, :cond_2

    .line 921
    invoke-static {v0, p4}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;I)V

    return-void

    .line 922
    :cond_2
    const-string/jumbo p3, "status"

    invoke-static {v0, p2, p1, p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$isDAVElement(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropPatchResponseParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p1, p4}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;I)V

    :cond_3
    return-void
.end method
