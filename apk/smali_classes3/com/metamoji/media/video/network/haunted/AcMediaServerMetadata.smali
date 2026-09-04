.class public Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;
.super Ljava/lang/Object;
.source "AcMediaServerMetadata.java"


# static fields
.field private static final _KEY_AUDIO_:Ljava/lang/String; = "audio"

.field private static final _KEY_INFO_:Ljava/lang/String; = "info"

.field private static final _KEY_ITEMS_:Ljava/lang/String; = "items"

.field private static final _KEY_METADATA_:Ljava/lang/String; = "metadata"

.field private static final _KEY_MOVIE_:Ljava/lang/String; = "movie"

.field private static final _KEY_VIDEO_:Ljava/lang/String; = "video"

.field private static final __KEY_ASPECT_H_:Ljava/lang/String; = "aspect_h"

.field private static final __KEY_ASPECT_W_:Ljava/lang/String; = "aspect_w"

.field private static final __KEY_AUDIO_BITRATE_:Ljava/lang/String; = "audio_bitrate"

.field private static final __KEY_AUDIO_CODEC_:Ljava/lang/String; = "audio_codec"

.field private static final __KEY_COMMENT_:Ljava/lang/String; = "comment"

.field private static final __KEY_COMPANY_ID_:Ljava/lang/String; = "company_id"

.field private static final __KEY_COMPANY_NAME_:Ljava/lang/String; = "company_name"

.field private static final __KEY_CONTAINER_:Ljava/lang/String; = "container"

.field private static final __KEY_DURATION_:Ljava/lang/String; = "duration"

.field private static final __KEY_FRAMERATE_D_:Ljava/lang/String; = "framerate_d"

.field private static final __KEY_FRAMERATE_N_:Ljava/lang/String; = "framerate_n"

.field private static final __KEY_FRAME_COUNT_:Ljava/lang/String; = "frame_count"

.field private static final __KEY_HEIGHT_:Ljava/lang/String; = "height"

.field private static final __KEY_PRIVATE_CLIP_:Ljava/lang/String; = "private_clip"

.field private static final __KEY_PRODUCTNAME_:Ljava/lang/String; = "product_name"

.field private static final __KEY_PRODUCTVERSION_:Ljava/lang/String; = "product_version"

.field private static final __KEY_REGISTDATE_:Ljava/lang/String; = "registdate"

.field private static final __KEY_REGISTLOCALE_:Ljava/lang/String; = "registlocale"

.field private static final __KEY_ROTATE_:Ljava/lang/String; = "rotate"

.field private static final __KEY_SAMPLING_RATE_:Ljava/lang/String; = "sampling_rate"

.field private static final __KEY_TICKET_:Ljava/lang/String; = "ticket"

.field private static final __KEY_TIMESTAMP_:Ljava/lang/String; = "timestamp"

.field private static final __KEY_TITLE_:Ljava/lang/String; = "title"

.field private static final __KEY_USER_ID_:Ljava/lang/String; = "user_id"

.field private static final __KEY_VIDEO_BITRATE_:Ljava/lang/String; = "video_bitrate"

.field private static final __KEY_VIDEO_CODEC_:Ljava/lang/String; = "video_codec"

.field private static final __KEY_WIDTH_:Ljava/lang/String; = "width"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 108
    invoke-interface {p0, p2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 109
    invoke-interface {p0, p3}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 110
    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public static createMetadataXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;Lcom/metamoji/media/video/VfCabinetUserInfo;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p5, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 120
    const-string/jumbo v2, "xml"

    invoke-static {p0, v2, v1}, Lcom/metamoji/media/video/network/haunted/MediaServerConnection;->getTempFileAndClean(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 127
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 133
    const-string v4, "items"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 134
    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 136
    const-string v5, "info"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 139
    const-string v6, "company_id"

    iget-object v7, p6, Lcom/metamoji/media/video/VfCabinetUserInfo;->companyId:Ljava/lang/String;

    invoke-static {v3, v5, v6, v7}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v6, "company_name"

    iget-object v7, p6, Lcom/metamoji/media/video/VfCabinetUserInfo;->coLoginId:Ljava/lang/String;

    invoke-static {v3, v5, v6, v7}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v6, "user_id"

    iget-object p6, p6, Lcom/metamoji/media/video/VfCabinetUserInfo;->userId:Ljava/lang/String;

    invoke-static {v3, v5, v6, p6}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo p6, "ticket"

    invoke-static {v3, v5, p6, p0}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object p0

    .line 146
    const-string p6, "product_name"

    invoke-virtual {p0}, Lcom/metamoji/cs/CsCloudServiceContext;->getProductName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, p6, v6}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string p6, "product_version"

    invoke-virtual {p0}, Lcom/metamoji/cs/CsCloudServiceContext;->getProductVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v5, p6, p0}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 151
    :cond_1
    const-string p0, "metadata"

    invoke-interface {v3, p0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 154
    const-string/jumbo p6, "title"

    invoke-static {v3, p0, p6, p1}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string p1, "comment"

    invoke-static {v3, p0, p1, p2}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string p1, "private_clip"

    const-string p2, "on"

    invoke-static {v3, p0, p1, p2}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo p1, "timestamp"

    invoke-static {v3, p0, p1, p3}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string p1, "registdate"

    invoke-static {v3, p0, p1, p4}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-interface {v4, p0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 162
    :cond_2
    const-string p0, "movie"

    invoke-interface {v3, p0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 164
    const-string p1, "container"

    iget-object p2, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->contaner:Ljava/lang/String;

    invoke-static {v3, p0, p1, p2}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-wide p1, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->duration:D

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-static {v3, p0, p2, p1}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo p1, "video"

    invoke-interface {v3, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 168
    const-string/jumbo p2, "video_codec"

    iget-object p3, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->video_codec:Ljava/lang/String;

    invoke-static {v3, p1, p2, p3}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget p2, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->width:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "width"

    invoke-static {v3, p1, p3, p2}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget p2, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->height:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "height"

    invoke-static {v3, p1, p3, p2}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget p2, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->aspect_w:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "aspect_w"

    invoke-static {v3, p1, p3, p2}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget p2, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->aspect_h:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "aspect_h"

    invoke-static {v3, p1, p3, p2}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget p2, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->rotate:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "rotate"

    invoke-static {v3, p1, p3, p2}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget p2, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->frame_rate_n:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "framerate_n"

    invoke-static {v3, p1, p3, p2}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget p2, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->frame_rate_d:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "framerate_d"

    invoke-static {v3, p1, p3, p2}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget p2, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->v_bitrate:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "video_bitrate"

    invoke-static {v3, p1, p3, p2}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-wide p2, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->frame_count:J

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "frame_count"

    invoke-static {v3, p1, p3, p2}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 180
    :cond_3
    const-string p1, "audio"

    invoke-interface {v3, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 182
    const-string p2, "audio_codec"

    iget-object p3, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->audio_codec:Ljava/lang/String;

    invoke-static {v3, p1, p2, p3}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget p2, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->sampling_rate:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "sampling_rate"

    invoke-static {v3, p1, p3, p2}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget p2, p5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->a_bitrate:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "audio_bitrate"

    invoke-static {v3, p1, p3, p2}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->addChild(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 187
    :cond_4
    invoke-interface {v4, p0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 191
    :cond_5
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :try_start_2
    new-instance p1, Ljavax/xml/transform/dom/DOMSource;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 196
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    .line 201
    const-string p2, "method"

    invoke-virtual {p1, p2, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string p2, "encoding"

    const-string p3, "UTF-8"

    invoke-virtual {p1, p2, p3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string p2, "indent"

    const-string/jumbo p3, "yes"

    invoke-virtual {p1, p2, p3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance p2, Ljavax/xml/transform/dom/DOMSource;

    .line 207
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p3

    invoke-direct {p2, p3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p3, p0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 206
    invoke-virtual {p1, p2, p3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 191
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 211
    :goto_1
    const-string p1, ""

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :catch_2
    return-object v0
.end method

.method public static createPosterframeJPEG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 84
    const-string v0, "jpg"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/metamoji/media/video/network/haunted/MediaServerConnection;->getTempFileAndClean(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 88
    invoke-static {p1, v0, v1}, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;->generateImageFromLocalMedia(Ljava/lang/String;D)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 93
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 94
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 95
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 96
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 98
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :cond_1
    return-object p0
.end method
