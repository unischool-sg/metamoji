.class public final Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;
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
    name = "PropertiesParser"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNwWebDAVRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NwWebDAVRequest.kt\ncom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1281:1\n1#2:1282\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J0\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J$\u0010\u000c\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;",
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

    .line 869
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p3, "elementName"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 885
    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    const-string v0, "prop"

    invoke-static {p3, p2, p1, v0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$isDAVElement(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 886
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 885
    invoke-static {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;I)V

    goto/16 :goto_0

    .line 886
    :cond_0
    const-string p3, "href"

    invoke-static {v0, p2, p1, p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$isDAVElement(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_xmlChars(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/lang/StringBuilder;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_3

    .line 887
    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_xmlChars(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    const-string p2, "/"

    invoke-static {p1, p2, v1, v0, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 891
    iget-object p2, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p2}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_livePropBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, "collection"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    :cond_1
    iget-object p2, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p2}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_livePropBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_liveProperties(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    :cond_2
    iget-object p2, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p2}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_deadPropBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_deadProperties(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 896
    :cond_3
    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)I

    move-result p3

    .line 901
    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    if-lt p3, v0, :cond_5

    .line 898
    invoke-static {v1, p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$isDAVNamespaceURI(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;)Z

    move-result p3

    .line 899
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    if-eqz p3, :cond_4

    .line 898
    invoke-static {v0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_livePropBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_xmlChars(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 899
    :cond_4
    invoke-static {v0, p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$isMetaMoJiPropNamespaceURI(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_deadPropBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_xmlChars(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 901
    :cond_5
    const-string p3, "response"

    invoke-static {v1, p2, p1, p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$isDAVElement(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 902
    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p1, v2}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_livePropBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/util/Map;)V

    .line 903
    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p1, v2}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_deadPropBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/util/Map;)V

    .line 906
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)I

    move-result p1

    if-lez p1, :cond_7

    .line 907
    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)I

    move-result p1

    iget-object p2, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    add-int/lit8 p1, p1, -0x1

    invoke-static {p2, p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;I)V

    :cond_7
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 871
    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)I

    move-result p3

    const/4 p4, 0x1

    if-lez p3, :cond_0

    .line 872
    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$get_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;)I

    move-result p3

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    add-int/2addr p3, p4

    invoke-static {v0, p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;I)V

    .line 875
    :cond_0
    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    const-string v0, "response"

    invoke-static {p3, p2, p1, v0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$isDAVElement(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 879
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    if-eqz p3, :cond_1

    .line 876
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_livePropBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/util/Map;)V

    .line 877
    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_deadPropBucket$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/util/Map;)V

    return-void

    .line 879
    :cond_1
    const-string p3, "prop"

    invoke-static {v0, p2, p1, p3}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$isDAVElement(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$PropertiesParser;->this$0:Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    invoke-static {p1, p4}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$set_insidePropDepth$p(Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;I)V

    :cond_2
    return-void
.end method
