.class public final Lcom/metamoji/media/video/network/NwUpload;
.super Ljava/lang/Object;
.source "NwUpload.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/network/NwUpload$Companion;,
        Lcom/metamoji/media/video/network/NwUpload$CustomHeader;,
        Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;,
        Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNwUpload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NwUpload.kt\ncom/metamoji/media/video/network/NwUpload\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,206:1\n72#2:207\n58#2,22:208\n*S KotlinDebug\n*F\n+ 1 NwUpload.kt\ncom/metamoji/media/video/network/NwUpload\n*L\n99#1:207\n99#1:208,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \"2\u00020\u0001:\u0004\"#$%B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003Ju\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\n\u0010\u000e\u001a\u00060\u000fR\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122!\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u00190\u0014H\u0086@\u00a2\u0006\u0002\u0010\u001aJc\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0011\u001a\u00020\u00122#\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0014H\u0082@\u00a2\u0006\u0002\u0010!\u00a8\u0006&"
    }
    d2 = {
        "Lcom/metamoji/media/video/network/NwUpload;",
        "",
        "<init>",
        "()V",
        "uploadMovie",
        "Lcom/metamoji/media/video/network/VfCloud$UploadResult;",
        "file",
        "Ljava/io/File;",
        "serverId",
        "",
        "title",
        "comment",
        "timestamp",
        "registrationDate",
        "movieInfo",
        "Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;",
        "Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;",
        "canceller",
        "Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;",
        "progressCallback",
        "Lkotlin/Function1;",
        "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
        "Lkotlin/ParameterName;",
        "name",
        "progress",
        "",
        "(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadFile",
        "",
        "urlString",
        "type",
        "userInfo",
        "Lcom/metamoji/media/video/VfCabinetUserInfo;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/metamoji/media/video/VfCabinetUserInfo;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "CustomHeader",
        "ProgressRequestBody",
        "UploadCanceller",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/media/video/network/NwUpload$Companion;

.field private static final MIMETYPE_BINARY:Ljava/lang/String; = "application/octet-stream"

.field private static final MIMETYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final MIMETYPE_XML:Ljava/lang/String; = "application/xml"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/network/NwUpload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/network/NwUpload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/network/NwUpload;->Companion:Lcom/metamoji/media/video/network/NwUpload$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$uploadFile(Lcom/metamoji/media/video/network/NwUpload;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/metamoji/media/video/VfCabinetUserInfo;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p8}, Lcom/metamoji/media/video/network/NwUpload;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/metamoji/media/video/VfCabinetUserInfo;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/metamoji/media/video/VfCabinetUserInfo;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/metamoji/media/video/VfCabinetUserInfo;",
            "Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    const-string v5, "NwUpload.uploadFile: enter (type="

    instance-of v6, v4, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;

    iget v7, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->label:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget v4, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->label:I

    sub-int/2addr v4, v8

    iput v4, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->label:I

    move-object/from16 v7, p0

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;

    move-object/from16 v7, p0

    invoke-direct {v6, v7, v4}, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;-><init>(Lcom/metamoji/media/video/network/NwUpload;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v4, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 79
    iget v9, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->label:I

    const-string v10, ", serverId="

    const/4 v11, 0x1

    const-string v12, ""

    const/4 v13, 0x0

    if-eqz v9, :cond_2

    if-ne v9, v11, :cond_1

    iget-object v0, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$10:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Call;

    iget-object v0, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$9:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Request;

    iget-object v0, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$8:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;

    iget-object v0, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$7:Ljava/lang/Object;

    check-cast v0, Lokhttp3/OkHttpClient;

    iget-object v0, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$6:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v0, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$5:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    iget-object v0, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/media/video/VfCabinetUserInfo;

    iget-object v0, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    iget-object v0, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 p8, v13

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v1

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    :try_start_1
    invoke-virtual {v3}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->getCancelled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 87
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "})"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    .line 89
    new-instance v5, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;

    sget-object v9, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v14, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v14, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v14

    move-object/from16 v15, p3

    invoke-virtual {v9, v15, v14}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v9

    move-object/from16 v14, p7

    invoke-direct {v5, v9, v14}, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;-><init>(Lokhttp3/RequestBody;Lkotlin/jvm/functions/Function1;)V

    .line 90
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move/from16 p8, v13

    move-object/from16 v13, p2

    .line 91
    :try_start_2
    invoke-virtual {v9, v13}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    .line 92
    const-string v11, "mmj.ms.coid"

    iget-object v1, v2, Lcom/metamoji/media/video/VfCabinetUserInfo;->companyId:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v12

    :cond_4
    invoke-virtual {v9, v11, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 93
    const-string v9, "mmj.ms.userid"

    iget-object v11, v2, Lcom/metamoji/media/video/VfCabinetUserInfo;->userId:Ljava/lang/String;

    if-nez v11, :cond_5

    move-object v11, v12

    :cond_5
    invoke-virtual {v1, v9, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 94
    const-string v9, "mmj.ms.ticket"

    invoke-virtual {v1, v9, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 95
    move-object v9, v5

    check-cast v9, Lokhttp3/RequestBody;

    invoke-virtual {v1, v9}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 97
    invoke-virtual {v4, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    .line 98
    invoke-virtual {v3, v9}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->set$app(Lokhttp3/Call;)V

    .line 99
    iput-object v0, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$0:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$1:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$3:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$4:Ljava/lang/Object;

    iput-object v3, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$5:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$6:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$7:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$8:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$9:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->L$10:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v6, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->label:I

    invoke-static {v9, v6}, Lcom/metamoji/network/NwHttpClientKt;->executeAsync(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-ne v4, v8, :cond_6

    return-object v8

    :cond_6
    move-object v1, v3

    .line 79
    :goto_1
    :try_start_3
    check-cast v4, Ljava/io/Closeable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 211
    :try_start_4
    move-object v2, v4

    check-cast v2, Lokhttp3/Response;

    const/4 v3, 0x0

    .line 100
    invoke-virtual {v1, v3}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->set$app(Lokhttp3/Call;)V

    .line 101
    invoke-virtual {v2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v5, "NwUpload.uploadFile: completed ("

    if-eqz v3, :cond_9

    .line 102
    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    move-object v12, v6

    :cond_8
    :goto_2
    invoke-direct {v3, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v6, "status"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") status="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 105
    const-string v0, "OK"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 107
    :cond_9
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") error, serverId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    move/from16 v0, p8

    .line 108
    :goto_3
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_a

    .line 217
    :try_start_6
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    :cond_a
    return-object v0

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v4, :cond_b

    :try_start_7
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    .line 207
    :try_start_8
    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 227
    :cond_b
    :goto_4
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v1

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_6

    :catchall_6
    move-exception v0

    :goto_5
    move/from16 p8, v13

    .line 112
    :goto_6
    invoke-virtual {v3}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->getCancelled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 113
    const-string v0, "NwUpload.uploadFile: cancelled"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_7

    .line 115
    :cond_c
    const-string v1, "NwUpload.uploadFile: error"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 117
    :goto_7
    invoke-static/range {p8 .. p8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final uploadMovie(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;",
            "Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/network/VfCloud$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p10

    instance-of v1, v0, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;

    iget v2, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;-><init>(Lcom/metamoji/media/video/network/NwUpload;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 34
    iget v4, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->label:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v4, :cond_6

    if-eq v4, v9, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$12:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$11:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$10:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$9:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/media/video/VfCabinetUserInfo;

    iget-object v3, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iget-object v3, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$7:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    iget-object v4, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;

    iget-object v4, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v1, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$12:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v6, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$11:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$10:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$9:Ljava/lang/Object;

    check-cast v8, Lcom/metamoji/media/video/VfCabinetUserInfo;

    iget-object v9, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$8:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iget-object v10, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$7:Ljava/lang/Object;

    check-cast v10, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    iget-object v11, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$6:Ljava/lang/Object;

    check-cast v11, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;

    iget-object v12, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$5:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$4:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$3:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$2:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v5, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v15

    move-object v15, v1

    move-object v1, v6

    move-object v6, v0

    move-object/from16 v0, v16

    goto/16 :goto_4

    :cond_3
    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$12:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$11:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$10:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$9:Ljava/lang/Object;

    check-cast v7, Lcom/metamoji/media/video/VfCabinetUserInfo;

    iget-object v8, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$8:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v9, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$7:Ljava/lang/Object;

    check-cast v9, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    iget-object v10, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$6:Ljava/lang/Object;

    check-cast v10, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;

    iget-object v11, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$5:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$4:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$3:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$2:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v6, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v11

    move-object v11, v10

    move-object v10, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v2

    move-object v2, v1

    move-object v1, v4

    move-object v4, v0

    move-object/from16 v0, v16

    goto/16 :goto_3

    :cond_4
    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$9:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/media/video/VfCabinetUserInfo;

    iget-object v4, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$8:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iget-object v5, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    iget-object v6, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$6:Ljava/lang/Object;

    check-cast v6, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;

    iget-object v8, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$5:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$0:Ljava/lang/Object;

    check-cast v13, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v4

    move-object v4, v0

    move-object/from16 v0, v16

    goto/16 :goto_2

    :cond_5
    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$8:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v4, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$7:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    iget-object v5, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;

    iget-object v6, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$5:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v9, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$0:Ljava/lang/Object;

    check-cast v13, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v0

    move-object v14, v4

    move-object v0, v5

    move-object v5, v12

    move-object v12, v6

    move-object v6, v11

    goto :goto_1

    :cond_6
    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$0:Ljava/lang/Object;

    move-object/from16 v5, p2

    iput-object v5, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$1:Ljava/lang/Object;

    move-object/from16 v6, p3

    iput-object v6, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$2:Ljava/lang/Object;

    move-object/from16 v10, p4

    iput-object v10, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$3:Ljava/lang/Object;

    move-object/from16 v11, p5

    iput-object v11, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$4:Ljava/lang/Object;

    move-object/from16 v12, p6

    iput-object v12, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$5:Ljava/lang/Object;

    move-object/from16 v13, p7

    iput-object v13, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$6:Ljava/lang/Object;

    move-object/from16 v14, p8

    iput-object v14, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$7:Ljava/lang/Object;

    move-object/from16 v15, p9

    iput-object v15, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$8:Ljava/lang/Object;

    iput v9, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->label:I

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/network/VfCloud$Companion;->updateSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    goto/16 :goto_5

    :cond_7
    move-object/from16 v16, v0

    move-object v9, v11

    move-object v0, v13

    move-object v13, v4

    :goto_1
    move-object/from16 v4, v16

    check-cast v4, Lcom/metamoji/media/video/VfCabinetUserInfo;

    if-nez v4, :cond_8

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->ERROR:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    return-object v0

    .line 40
    :cond_8
    sget-object v11, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    iput-object v13, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$4:Ljava/lang/Object;

    iput-object v12, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$5:Ljava/lang/Object;

    iput-object v0, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$7:Ljava/lang/Object;

    iput-object v15, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$8:Ljava/lang/Object;

    iput-object v4, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$9:Ljava/lang/Object;

    iput v8, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->label:I

    invoke-virtual {v11, v5, v1}, Lcom/metamoji/media/video/network/VfCloud$Companion;->getUploadPoint(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_9

    goto/16 :goto_5

    :cond_9
    move-object v11, v6

    move-object v6, v0

    move-object v0, v8

    move-object v8, v12

    move-object v12, v5

    move-object v5, v14

    .line 34
    :goto_2
    check-cast v0, Ljava/lang/String;

    .line 42
    move-object v14, v0

    check-cast v14, Ljava/lang/CharSequence;

    if-eqz v14, :cond_16

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_a

    goto/16 :goto_7

    :cond_a
    move-object/from16 p7, v4

    move-object/from16 p6, v6

    move-object/from16 p5, v8

    move-object/from16 p4, v9

    move-object/from16 p3, v10

    move-object/from16 p2, v11

    move-object/from16 p1, v12

    .line 44
    invoke-static/range {p1 .. p7}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->createMetadataXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;Lcom/metamoji/media/video/VfCabinetUserInfo;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p2

    move-object/from16 v11, p6

    move-object/from16 v14, p7

    if-nez v4, :cond_b

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->ERROR:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    return-object v0

    .line 47
    :cond_b
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/metamoji/media/video/network/haunted/AcMediaServerMetadata;->createPosterframeJPEG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_c

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->ERROR:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    return-object v0

    .line 50
    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v13, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$1:Ljava/lang/Object;

    move-object/from16 p4, v2

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$2:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$3:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$4:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$5:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$7:Ljava/lang/Object;

    iput-object v15, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$8:Ljava/lang/Object;

    iput-object v14, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$9:Ljava/lang/Object;

    iput-object v0, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$10:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$11:Ljava/lang/Object;

    iput-object v7, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$12:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v1, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->label:I

    const-string v2, "application/xml"

    const/16 v16, 0x0

    move-object/from16 p1, p0

    move-object/from16 p3, v0

    move-object/from16 p9, v1

    move-object/from16 p5, v2

    move-object/from16 p7, v5

    move-object/from16 p2, v12

    move-object/from16 p6, v14

    move-object/from16 p8, v16

    invoke-direct/range {p1 .. p9}, Lcom/metamoji/media/video/network/NwUpload;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/metamoji/media/video/VfCabinetUserInfo;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v5, p3

    move-object/from16 v1, p7

    move-object/from16 v2, p9

    if-ne v0, v3, :cond_d

    goto/16 :goto_5

    :cond_d
    move-object/from16 v17, v9

    move-object v9, v1

    move-object v1, v4

    move-object v4, v7

    move-object v7, v14

    move-object v14, v10

    move-object v10, v6

    move-object v6, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v12

    move-object v12, v8

    move-object v8, v15

    move-object/from16 v15, v17

    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    .line 51
    invoke-virtual {v9}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->getCancelled()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->CANCELLED:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    return-object v0

    :cond_e
    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->ERROR:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    return-object v0

    .line 55
    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, v2, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$0:Ljava/lang/Object;

    iput-object v15, v2, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$1:Ljava/lang/Object;

    move-object/from16 p4, v0

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$2:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$3:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$4:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$5:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$6:Ljava/lang/Object;

    iput-object v9, v2, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$7:Ljava/lang/Object;

    iput-object v8, v2, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$8:Ljava/lang/Object;

    iput-object v7, v2, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$9:Ljava/lang/Object;

    iput-object v5, v2, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$10:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$11:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$12:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, v2, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->label:I

    const-string v0, "image/jpeg"

    const/16 v16, 0x0

    move-object/from16 p1, p0

    move-object/from16 p5, v0

    move-object/from16 p9, v2

    move-object/from16 p3, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v9

    move-object/from16 p2, v15

    move-object/from16 p8, v16

    invoke-direct/range {p1 .. p9}, Lcom/metamoji/media/video/network/NwUpload;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/metamoji/media/video/VfCabinetUserInfo;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v2, p6

    move-object/from16 v15, p9

    if-ne v0, v3, :cond_10

    goto/16 :goto_5

    :cond_10
    move-object/from16 v17, v8

    move-object v8, v2

    move-object v2, v10

    move-object v10, v9

    move-object/from16 v9, v17

    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    .line 56
    invoke-virtual {v10}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->getCancelled()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->CANCELLED:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    return-object v0

    :cond_11
    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->ERROR:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    return-object v0

    .line 61
    :cond_12
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$1:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$2:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$3:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$4:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$5:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$6:Ljava/lang/Object;

    iput-object v10, v15, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$7:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$8:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$9:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$10:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$11:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v15, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->L$12:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v15, Lcom/metamoji/media/video/network/NwUpload$uploadMovie$1;->label:I

    const-string v0, "application/octet-stream"

    move-object/from16 p1, p0

    move-object/from16 p5, v0

    move-object/from16 p2, v5

    move-object/from16 p4, v6

    move-object/from16 p3, v7

    move-object/from16 p6, v8

    move-object/from16 p8, v9

    move-object/from16 p7, v10

    move-object/from16 p9, v15

    invoke-direct/range {p1 .. p9}, Lcom/metamoji/media/video/network/NwUpload;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/metamoji/media/video/VfCabinetUserInfo;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v9, p7

    if-ne v0, v3, :cond_13

    :goto_5
    return-object v3

    :cond_13
    move-object v3, v9

    :goto_6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    .line 62
    invoke-virtual {v3}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->getCancelled()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->CANCELLED:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    return-object v0

    :cond_14
    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->ERROR:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    return-object v0

    .line 64
    :cond_15
    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->SUCCESS:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    return-object v0

    .line 66
    :cond_16
    :goto_7
    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->ERROR:Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    return-object v0
.end method
