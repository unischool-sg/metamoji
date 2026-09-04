.class Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$2;
.super Ljava/util/HashMap;
.source "CvRecordingsIncomingSubconverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter;->knownRecordingIndexAttributeAndPropertyDictionary()Ljava/util/Map;
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

    .line 70
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string v0, "index-id"

    const-string v1, "$id"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "title"

    const-string v1, "$title"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "start-time"

    const-string v1, "$startTime"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "end-time"

    const-string v1, "$endTime"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "page-id"

    const-string v1, "$pageId"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
