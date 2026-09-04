.class Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;
.super Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;
.source "MediaUploadedListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Media"
.end annotation


# instance fields
.field private _author:Ljava/lang/String;

.field private _downloadable:Z

.field private _driveId:Ljava/lang/String;

.field private _fileSize:J

.field private _mediaId:Ljava/lang/String;

.field private _noteTitle:Ljava/lang/String;

.field private _recordId:Ljava/lang/String;

.field private _startTime:Ljava/util/Date;

.field private _ticket:Ljava/lang/String;

.field private _title:Ljava/lang/String;

.field private _url:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fget_mediaId(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_mediaId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_recordId(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_recordId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_ticket(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_ticket:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_url(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_url:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog-IA;)V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_downloadable:Z

    .line 144
    check-cast p1, Ljava/util/Map;

    .line 145
    invoke-direct {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->setInfo(Ljava/util/Map;)V

    return-void
.end method

.method private setInfo(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    const-string v0, "driveId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_driveId:Ljava/lang/String;

    .line 154
    const-string v0, "registUserName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_author:Ljava/lang/String;

    .line 155
    const-string v0, "recordId"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_recordId:Ljava/lang/String;

    .line 158
    :cond_0
    const-string v0, "clientMediaId"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_mediaId:Ljava/lang/String;

    .line 161
    :cond_1
    const-string v0, "createMediaTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/metamoji/cm/TimeUtils;->unixtime2datetime(D)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_startTime:Ljava/util/Date;

    .line 162
    const-string v0, "fileSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_fileSize:J

    .line 163
    const-string/jumbo v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_url:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_recordId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 166
    invoke-static {v0}, Lcom/metamoji/media/service/MediaGetMediaFile;->urlForGetMediaFileForRecordId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_url:Ljava/lang/String;

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_mediaId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 169
    invoke-static {v0}, Lcom/metamoji/media/service/MediaGetMediaFile;->urlForGetMediaFileForMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_url:Ljava/lang/String;

    .line 172
    :cond_3
    :goto_0
    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x9

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_5

    .line 178
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    .line 180
    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_title:Ljava/lang/String;

    goto :goto_1

    .line 182
    :cond_4
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_title:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_noteTitle:Ljava/lang/String;

    const/16 v1, 0x5d

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_7

    .line 186
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_noteTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_noteTitle:Ljava/lang/String;

    goto :goto_1

    .line 190
    :cond_5
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 191
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_title:Ljava/lang/String;

    .line 192
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_6

    .line 193
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_noteTitle:Ljava/lang/String;

    goto :goto_1

    .line 195
    :cond_6
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_noteTitle:Ljava/lang/String;

    .line 199
    :cond_7
    :goto_1
    invoke-static {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->ticketForMediaData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_ticket:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 262
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_recordId:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    iget-object v2, v2, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_recordId:Ljava/lang/String;

    if-nez v2, :cond_2

    return v0

    :cond_2
    if-nez v1, :cond_3

    .line 269
    move-object v2, p1

    check-cast v2, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    iget-object v2, v2, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_recordId:Ljava/lang/String;

    if-eqz v2, :cond_3

    return v0

    .line 272
    :cond_3
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_mediaId:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v3, p1

    check-cast v3, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    iget-object v3, v3, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_mediaId:Ljava/lang/String;

    if-nez v3, :cond_4

    return v0

    :cond_4
    if-nez v2, :cond_5

    .line 275
    move-object v3, p1

    check-cast v3, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    iget-object v3, v3, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_mediaId:Ljava/lang/String;

    if-eqz v3, :cond_5

    return v0

    :cond_5
    if-eqz v1, :cond_6

    .line 279
    move-object v3, p1

    check-cast v3, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    iget-object v3, v3, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_recordId:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 280
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    if-eqz v2, :cond_7

    .line 283
    check-cast p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    iget-object p1, p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_mediaId:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 284
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method public getDateAndAuthor()Ljava/lang/String;
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_startTime:Ljava/util/Date;

    invoke-static {v0}, Lcom/metamoji/media/MediaUtil;->formattedDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_author:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_noteTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_noteTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 237
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedFileSize()Ljava/lang/String;
    .locals 6

    .line 252
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_UploadedFilesSizeUnitLabel:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_fileSize:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/metamoji/media/voice/VcUtil;->stringFromIntegerAddedComma(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordId()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_recordId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_ticket:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_recordId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_mediaId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDownloadable()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_downloadable:Z

    return v0
.end method

.method public isHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDownloadable(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->_downloadable:Z

    return-void
.end method
