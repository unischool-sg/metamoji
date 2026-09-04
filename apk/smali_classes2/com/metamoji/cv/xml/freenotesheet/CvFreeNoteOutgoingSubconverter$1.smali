.class Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter$1;
.super Ljava/lang/Object;
.source "CvFreeNoteOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->generatePageElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;ILcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;


# direct methods
.method constructor <init>(Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter$1;->this$0:Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    .line 262
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 263
    check-cast p1, Ljava/util/List;

    .line 264
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 266
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
