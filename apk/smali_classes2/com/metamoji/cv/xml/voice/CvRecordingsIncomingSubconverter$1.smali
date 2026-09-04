.class Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$1;
.super Ljava/util/HashMap;
.source "CvRecordingsIncomingSubconverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter;->knownRecordingAttributeAndPropertyDictionary()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 47
    const-string v0, "ticket"

    const-string v1, "$ticket"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "mime-type"

    const-string v1, "$mimeType"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "server-type"

    const-string v1, "$serverType"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "url"

    const-string v1, "$url"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "title"

    const-string v1, "$title"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "file-id"

    const-string v1, "$fileId"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "media-id"

    const-string v1, "$mediaId"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "room-id"

    const-string v1, "$roomId"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "user-id"

    const-string v1, "$userId"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "page-id"

    const-string v1, "$pageId"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "nickname"

    const-string v1, "$nickname"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "start-date"

    const-string v1, "$startDate"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "duration"

    const-string v1, "$duration"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
