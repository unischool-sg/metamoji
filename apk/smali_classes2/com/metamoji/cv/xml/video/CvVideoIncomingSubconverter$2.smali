.class Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter$2;
.super Ljava/lang/Object;
.source "CvVideoIncomingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter;->parseVideoElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter;

.field final synthetic val$model:Lcom/metamoji/df/model/IModel;

.field final synthetic val$propElement:Lorg/w3c/dom/Element;


# direct methods
.method constructor <init>(Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter;Lcom/metamoji/df/model/IModel;Lorg/w3c/dom/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter$2;->this$0:Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter;

    iput-object p2, p0, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter$2;->val$model:Lcom/metamoji/df/model/IModel;

    iput-object p3, p0, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter$2;->val$propElement:Lorg/w3c/dom/Element;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic check(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter$2;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public check(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 138
    const-string v0, "true"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v0, "isMuted"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 141
    iget-object p1, p0, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter$2;->val$propElement:Lorg/w3c/dom/Element;

    iget-object v0, p0, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v1, "startFrom"

    const-string v2, "start-from"

    invoke-static {p1, v0, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter$2;->val$propElement:Lorg/w3c/dom/Element;

    iget-object v0, p0, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v1, "playTo"

    const-string v2, "play-to"

    invoke-static {p1, v0, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
