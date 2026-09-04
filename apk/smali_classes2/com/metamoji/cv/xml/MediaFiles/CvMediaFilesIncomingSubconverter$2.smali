.class Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$2;
.super Ljava/util/HashMap;
.source "CvMediaFilesIncomingSubconverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter;->parseMfLocalCollectionElement(Lorg/w3c/dom/Element;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter;


# direct methods
.method constructor <init>(Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$2;->this$0:Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 201
    const-string p1, "uuid"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string p1, "fileName"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string p1, "identifier"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string p1, "dataSize"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string p1, "creationDate"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string p1, "modificationDate"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string p1, "serverIDActive"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string p1, "status"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
