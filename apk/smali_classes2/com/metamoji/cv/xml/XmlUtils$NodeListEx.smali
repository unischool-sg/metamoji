.class public Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;
.super Ljava/lang/Object;
.source "XmlUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cv/xml/XmlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeListEx"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private _list:Lorg/w3c/dom/NodeList;


# direct methods
.method static bridge synthetic -$$Nest$fget_list(Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;)Lorg/w3c/dom/NodeList;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->_list:Lorg/w3c/dom/NodeList;

    return-object p0
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->_list:Lorg/w3c/dom/NodeList;

    return-void
.end method


# virtual methods
.method public getList()Lorg/w3c/dom/NodeList;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->_list:Lorg/w3c/dom/NodeList;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx$1;

    invoke-direct {v0, p0}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx$1;-><init>(Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->_list:Lorg/w3c/dom/NodeList;

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    return v0
.end method
