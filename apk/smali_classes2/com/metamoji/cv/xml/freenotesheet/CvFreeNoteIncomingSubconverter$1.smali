.class Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter$1;
.super Ljava/lang/Object;
.source "CvFreeNoteIncomingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;->parsePagesElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;

.field final synthetic val$pageCount:I


# direct methods
.method constructor <init>(Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter$1;->this$0:Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;

    iput p2, p0, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter$1;->val$pageCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    if-eqz p1, :cond_1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter$1;->val$pageCount:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

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

    .line 224
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter$1;->check(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
