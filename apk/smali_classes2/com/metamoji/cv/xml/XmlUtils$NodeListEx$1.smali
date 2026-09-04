.class Lcom/metamoji/cv/xml/XmlUtils$NodeListEx$1;
.super Ljava/lang/Object;
.source "XmlUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field _index:I

.field final synthetic this$0:Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 259
    const-class v0, Lcom/metamoji/cv/xml/XmlUtils;

    return-void
.end method

.method constructor <init>(Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx$1;->this$0:Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 260
    iput p1, p0, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx$1;->_index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 264
    iget v0, p0, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx$1;->_index:I

    iget-object v1, p0, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx$1;->this$0:Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;

    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->-$$Nest$fget_list(Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx$1;->next()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/w3c/dom/Node;
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx$1;->this$0:Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;

    invoke-static {v0}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->-$$Nest$fget_list(Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx$1;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx$1;->_index:I

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
