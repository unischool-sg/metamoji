.class Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$1;
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

    .line 185
    iput-object p1, p0, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$1;->this$0:Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 187
    const-string p1, "uuid"

    invoke-virtual {p0, p1, p1}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string p1, "file_name"

    const-string v0, "fileName"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string p1, "identifire"

    const-string v0, "identifier"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string p1, "data_size"

    const-string v0, "dataSize"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string p1, "creation_date"

    const-string v0, "creationDate"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string p1, "modification_date"

    const-string v0, "modificationDate"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string p1, "server_id_active"

    const-string v0, "serverIDActive"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string p1, "status"

    invoke-virtual {p0, p1, p1}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
