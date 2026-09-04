.class public final Lcom/metamoji/media/video/network/salvation/NwServerAccessor;
.super Ljava/lang/Object;
.source "NwServerAccessor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/network/salvation/NwServerAccessor$FieldName;,
        Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestCmd;,
        Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestType;,
        Lcom/metamoji/media/video/network/salvation/NwServerAccessor$VfServerStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004<=>?B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0002J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0082@\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0002Jq\u0010\u0012\u001a\u0004\u0018\u0001H\u0013\"\u0004\u0008\u0000\u0010\u00132\u0006\u0010\u0007\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00052#\u0010\u0016\u001a\u001f\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0006\u0012\u0004\u0018\u0001H\u00130\u0017H\u0082@\u00a2\u0006\u0002\u0010\u001cJF\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u0007\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0082@\u00a2\u0006\u0002\u0010\u001fJ\u001c\u0010 \u001a\u0004\u0018\u00010!2\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0086@\u00a2\u0006\u0002\u0010\"J\"\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0086@\u00a2\u0006\u0002\u0010&J$\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010\u0014\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0086@\u00a2\u0006\u0002\u0010&JR\u0010)\u001a\u0008\u0012\u0004\u0012\u00020(0*2\u0006\u0010%\u001a\u00020\u00052\u0006\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010\u00052\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0086@\u00a2\u0006\u0002\u00103J$\u00104\u001a\u0004\u0018\u0001052\u0006\u0010\u0014\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0086@\u00a2\u0006\u0002\u0010&J\u001c\u00106\u001a\u0004\u0018\u0001072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0086@\u00a2\u0006\u0002\u0010\"J\"\u00108\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0086@\u00a2\u0006\u0002\u0010&J\u001a\u00109\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0086@\u00a2\u0006\u0002\u0010\"J\"\u0010:\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0086@\u00a2\u0006\u0002\u0010&J\"\u0010;\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0086@\u00a2\u0006\u0002\u0010&R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lcom/metamoji/media/video/network/salvation/NwServerAccessor;",
        "",
        "<init>",
        "()V",
        "FLORA_REST",
        "",
        "makeFloraCommandUrl",
        "cmd",
        "serverName",
        "option",
        "setAuthData",
        "",
        "bodyBuilder",
        "Lokhttp3/MultipartBody$Builder;",
        "(Lokhttp3/MultipartBody$Builder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "bodyToString",
        "req",
        "Lokhttp3/Request;",
        "internalPostCommand",
        "T",
        "serverId",
        "json",
        "fnResult",
        "Lkotlin/Function1;",
        "Lokhttp3/Response;",
        "Lkotlin/ParameterName;",
        "name",
        "r",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "postCommand",
        "Lorg/json/JSONObject;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getServerCoInfo",
        "Lcom/metamoji/media/video/VfCoInfo;",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getClipCount",
        "",
        "userId",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getClipInfo",
        "Lcom/metamoji/media/video/VfClipInfo;",
        "getClipList",
        "",
        "offset",
        "count",
        "",
        "filter",
        "order",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "direction",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        "(Ljava/lang/String;JILjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPosterFrame",
        "Landroid/graphics/Bitmap;",
        "getServerStatus",
        "Lcom/metamoji/media/video/network/salvation/NwServerAccessor$VfServerStatus;",
        "getUploadPoint",
        "reserveServerId",
        "deleteClip",
        "exportClip",
        "FieldName",
        "RestCmd",
        "RestType",
        "VfServerStatus",
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
.field private static final FLORA_REST:Ljava/lang/String; = "flora/api/v1/"

.field public static final INSTANCE:Lcom/metamoji/media/video/network/salvation/NwServerAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;

    invoke-direct {v0}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;-><init>()V

    sput-object v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->INSTANCE:Lcom/metamoji/media/video/network/salvation/NwServerAccessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$internalPostCommand(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p7}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->internalPostCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$makeFloraCommandUrl(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->makeFloraCommandUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postCommand(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p6}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAuthData(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Lokhttp3/MultipartBody$Builder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->setAuthData(Lokhttp3/MultipartBody$Builder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final bodyToString(Lokhttp3/Request;)Ljava/lang/String;
    .locals 2

    .line 120
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "<empty body>"

    return-object p1

    .line 121
    :cond_0
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 122
    move-object v1, v0

    check-cast v1, Lokio/BufferedSink;

    invoke-virtual {p1, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 123
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic deleteClip$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 282
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->deleteClip(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static final deleteClip$lambda$13(Lokhttp3/Response;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 284
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic exportClip$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 288
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->exportClip(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static final exportClip$lambda$14(Lokhttp3/Response;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 291
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getClipCount$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 205
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->getClipCount(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getClipInfo$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 211
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->getClipInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getClipList$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;JILjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11

    and-int/lit8 v0, p10, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    .line 216
    invoke-virtual/range {v1 .. v10}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->getClipList(Ljava/lang/String;JILjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static final getClipList$lambda$10(Lokhttp3/Response;)Lorg/json/JSONArray;
    .locals 3

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, p0

    check-cast v1, Lokhttp3/ResponseBody;

    .line 226
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v2}, Lcom/metamoji/media/video/network/VfCloudKt;->hasValue(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method static final getClipList$lambda$10$lambda$9$lambda$8(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    const-string v0, "jsonString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic getPosterFrame$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 246
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->getPosterFrame(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static final getPosterFrame$lambda$12(Lokhttp3/Response;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, p0

    check-cast v1, Lokhttp3/ResponseBody;

    .line 249
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const/4 p0, 0x0

    .line 252
    array-length v0, v1

    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static synthetic getServerCoInfo$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 200
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->getServerCoInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getServerStatus$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 264
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->getServerStatus(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getUploadPoint$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 271
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->getUploadPoint(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final internalPostCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Response;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 127
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object/from16 p1, p7

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic internalPostCommand$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    and-int/lit8 p9, p8, 0x4

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p8, p8, 0x10

    if-eqz p8, :cond_2

    move-object p5, v0

    .line 126
    :cond_2
    invoke-direct/range {p0 .. p7}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->internalPostCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final makeFloraCommandUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 30
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    sget-object p2, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {p2}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/media/video/VfVideoFileManager;->getServerName()Ljava/lang/String;

    move-result-object p2

    .line 37
    :cond_1
    const-string v0, "http://"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "http://%s/"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :cond_2
    const-string v0, "/"

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 44
    :cond_3
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "flora/api/v1/"

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "2?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "2"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method private final postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 165
    new-instance v6, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda5;

    invoke-direct {v6, p1}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->internalPostCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic postCommand$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    and-int/lit8 p8, p7, 0x4

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_2

    move-object p5, v0

    .line 164
    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static final postCommand$lambda$7(Ljava/lang/String;Lokhttp3/Response;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v1, p1

    check-cast v1, Lokhttp3/ResponseBody;

    .line 167
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/metamoji/media/video/network/VfCloudKt;->hasValue(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method static final postCommand$lambda$7$lambda$6$lambda$5(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NwServerAccess: server response ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")\n=====\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n====="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 169
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic reserveServerId$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 277
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->reserveServerId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final setAuthData(Lokhttp3/MultipartBody$Builder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Builder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$setAuthData$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$setAuthData$1;

    iget v1, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$setAuthData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$setAuthData$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$setAuthData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$setAuthData$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$setAuthData$1;-><init>(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$setAuthData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 68
    iget v2, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$setAuthData$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$setAuthData$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lokhttp3/MultipartBody$Builder;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    :try_start_1
    sget-object p2, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->INSTANCE:Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;

    iput-object p1, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$setAuthData$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$setAuthData$1;->label:I

    const/4 v2, 0x0

    invoke-static {p2, v4, v0, v3, v2}, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->getUserInfo$default(Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/metamoji/media/video/VfCabinetUserInfo;

    if-nez p2, :cond_4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 72
    :cond_4
    iget-object v0, p2, Lcom/metamoji/media/video/VfCabinetUserInfo;->loginName:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 73
    :cond_5
    iget-object v1, p2, Lcom/metamoji/media/video/VfCabinetUserInfo;->coLoginId:Ljava/lang/String;

    if-nez v1, :cond_6

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 74
    :cond_6
    iget-object v2, p2, Lcom/metamoji/media/video/VfCabinetUserInfo;->userId:Ljava/lang/String;

    if-nez v2, :cond_7

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 75
    :cond_7
    iget-object v5, p2, Lcom/metamoji/media/video/VfCabinetUserInfo;->companyId:Ljava/lang/String;

    if-nez v5, :cond_8

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 78
    :cond_8
    const-string v6, "loginUser"

    invoke-virtual {p1, v6, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 80
    const-string v0, "loginCompany"

    invoke-virtual {p1, v0, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 95
    iget-object v0, p2, Lcom/metamoji/media/video/VfCabinetUserInfo;->loginedPassword:Ljava/lang/String;

    new-instance v1, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda7;-><init>(Lokhttp3/MultipartBody$Builder;)V

    invoke-static {v0, v1}, Lcom/metamoji/media/video/network/VfCloudKt;->hasValue(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 98
    iget-object p2, p2, Lcom/metamoji/media/video/VfCabinetUserInfo;->loginedQwd:Ljava/lang/String;

    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda8;-><init>(Lokhttp3/MultipartBody$Builder;)V

    invoke-static {p2, v0}, Lcom/metamoji/media/video/network/VfCloudKt;->hasValue(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokhttp3/MultipartBody$Builder;

    .line 103
    const-string/jumbo p2, "userId"

    invoke-virtual {p1, p2, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 104
    const-string p2, "companyId"

    invoke-virtual {p1, p2, v5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 105
    const-string p2, "productName"

    const-string v0, "Android-Share-G-ClassRoom"

    invoke-virtual {p1, p2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 106
    const-string p2, "productVersion"

    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersionToMinor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProductVersionToMinor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 107
    const-string/jumbo p2, "rootServer"

    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getRootServer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRootServer(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 108
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 110
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 111
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private static final setAuthData$lambda$0(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const-string v0, "accessToken"

    invoke-virtual {p0, v0, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static final setAuthData$lambda$1(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    const-string v0, "refreshToken"

    invoke-virtual {p0, v0, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static final setAuthData$lambda$2(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const-string v0, "localDeviceId"

    invoke-virtual {p0, v0, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    return-object p0
.end method

.method static final setAuthData$lambda$3(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const-string v0, "password"

    invoke-virtual {p0, v0, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    return-object p0
.end method

.method static final setAuthData$lambda$4(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    const-string v0, "loginedQwd"

    invoke-virtual {p0, v0, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final deleteClip(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$deleteClip$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$deleteClip$1;

    iget v1, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$deleteClip$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$deleteClip$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$deleteClip$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$deleteClip$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$deleteClip$1;-><init>(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v0

    iget-object p3, v8, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$deleteClip$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 282
    iget v1, v8, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$deleteClip$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v8, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$deleteClip$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v8, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$deleteClip$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 283
    new-instance v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v8, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$deleteClip$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v8, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$deleteClip$1;->L$1:Ljava/lang/Object;

    iput v2, v8, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$deleteClip$1;->label:I

    const-string v2, "deleteclip"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->internalPostCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 285
    :goto_2
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final exportClip(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$exportClip$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$exportClip$1;

    iget v1, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$exportClip$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$exportClip$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$exportClip$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$exportClip$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$exportClip$1;-><init>(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v0

    iget-object p3, v8, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$exportClip$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 288
    iget v1, v8, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$exportClip$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v8, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$exportClip$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v8, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$exportClip$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 290
    new-instance v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v8, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$exportClip$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v8, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$exportClip$1;->L$1:Ljava/lang/Object;

    iput v2, v8, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$exportClip$1;->label:I

    const-string v2, "exportclipinfo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->internalPostCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 292
    :goto_2
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final getClipCount(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;

    iget v1, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;-><init>(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    iget-object p3, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 205
    iget v1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 206
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "fu="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, "&type=MOVIE"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;->L$1:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;->L$2:Ljava/lang/Object;

    iput v2, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipCount$1;->label:I

    const-string v2, "getclipcount"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v1 .. v9}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->postCommand$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p3, Lorg/json/JSONObject;

    const-wide/16 p1, 0x0

    if-nez p3, :cond_4

    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 208
    :cond_4
    const-string v0, "count"

    invoke-static {p3, v0, p1, p2}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final getClipInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/VfClipInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipInfo$1;

    iget v1, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipInfo$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipInfo$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipInfo$1;-><init>(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    iget-object p3, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 211
    iget v1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipInfo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipInfo$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipInfo$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 212
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipInfo$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipInfo$1;->L$1:Ljava/lang/Object;

    iput v2, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipInfo$1;->label:I

    const-string v2, "getclipinfo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    invoke-static/range {v1 .. v9}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->postCommand$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p3, Lorg/json/JSONObject;

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 213
    :cond_4
    new-instance p1, Lcom/metamoji/media/video/VfClipInfo;

    invoke-direct {p1, p3}, Lcom/metamoji/media/video/VfClipInfo;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public final getClipList(Ljava/lang/String;JILjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
            "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/metamoji/media/video/VfClipInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p9

    instance-of v6, v5, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;

    iget v7, v6, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->label:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget v5, v6, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->label:I

    sub-int/2addr v5, v8

    iput v5, v6, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->label:I

    move-object/from16 v7, p0

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;

    move-object/from16 v7, p0

    invoke-direct {v6, v7, v5}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;-><init>(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v14, v6

    iget-object v5, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 216
    iget v8, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->label:I

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    if-ne v8, v9, :cond_1

    iget v0, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->I$0:I

    iget-wide v0, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->J$0:J

    iget-object v0, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->L$6:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->L$5:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->L$4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    iget-object v1, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    iget-object v1, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 217
    const-string v5, "&type=MOVIE"

    const-string v8, "&fu="

    const-string v10, "&dir="

    const-string v11, "&order="

    const-string v12, "&c="

    const-string v13, "off="

    if-nez v4, :cond_3

    .line 218
    invoke-virtual/range {p6 .. p6}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->getString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p7 .. p7}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->getString()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 220
    :cond_3
    invoke-virtual/range {p6 .. p6}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p7 .. p7}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->getString()Ljava/lang/String;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "&filter="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v11, v5

    .line 223
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 224
    new-instance v13, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda4;

    invoke-direct {v13}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->L$1:Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->L$3:Ljava/lang/Object;

    invoke-static/range {p8 .. p8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->L$4:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->L$5:Ljava/lang/Object;

    iput-object v5, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->L$6:Ljava/lang/Object;

    iput-wide v1, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->J$0:J

    iput v3, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->I$0:I

    const/4 v0, 0x1

    iput v0, v14, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getClipList$1;->label:I

    const-string v8, "getlist"

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x10

    const/16 v16, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, p8

    invoke-static/range {v7 .. v16}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->internalPostCommand$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_4

    return-object v6

    :cond_4
    move-object/from16 v17, v5

    move-object v5, v0

    move-object/from16 v0, v17

    .line 216
    :goto_2
    check-cast v5, Lorg/json/JSONArray;

    if-eqz v5, :cond_5

    .line 233
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 235
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    .line 236
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 237
    new-instance v4, Lcom/metamoji/media/video/VfClipInfo;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v3}, Lcom/metamoji/media/video/VfClipInfo;-><init>(Lorg/json/JSONObject;)V

    .line 238
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 242
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NwServerAccess.getClipList: count="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPosterFrame(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 247
    new-instance v6, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$$ExternalSyntheticLambda0;-><init>()V

    const/16 v8, 0x10

    const/4 v9, 0x0

    const-string v1, "getposterframe"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v2, p2

    move-object v7, p3

    invoke-static/range {v0 .. v9}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->internalPostCommand$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getServerCoInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/VfCoInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerCoInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerCoInfo$1;

    iget v1, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerCoInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerCoInfo$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerCoInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerCoInfo$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerCoInfo$1;-><init>(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    iget-object p2, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerCoInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 200
    iget v1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerCoInfo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerCoInfo$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 201
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerCoInfo$1;->L$0:Ljava/lang/Object;

    iput v2, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerCoInfo$1;->label:I

    const-string v2, "getcoinfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v9}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->postCommand$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p2, Lorg/json/JSONObject;

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 202
    :cond_4
    new-instance p1, Lcom/metamoji/media/video/VfCoInfo;

    invoke-direct {p1, p2}, Lcom/metamoji/media/video/VfCoInfo;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public final getServerStatus(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/network/salvation/NwServerAccessor$VfServerStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerStatus$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerStatus$1;

    iget v1, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerStatus$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerStatus$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerStatus$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerStatus$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerStatus$1;-><init>(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    iget-object p2, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerStatus$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 264
    iget v1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerStatus$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerStatus$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 266
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerStatus$1;->L$0:Ljava/lang/Object;

    iput v2, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getServerStatus$1;->label:I

    const-string v2, "getserverstatus"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v9}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->postCommand$default(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    move-object v0, p2

    check-cast v0, Lorg/json/JSONObject;

    const/4 p1, 0x0

    if-nez v0, :cond_4

    return-object p1

    .line 268
    :cond_4
    new-instance p2, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$VfServerStatus;

    const-string v1, "current_status"

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2, p1}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetString$default(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v1, "max_filesize_mb"

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetLong$default(Lorg/json/JSONObject;Ljava/lang/String;JILjava/lang/Object;)J

    move-result-wide v0

    invoke-direct {p2, p1, v0, v1}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$VfServerStatus;-><init>(Ljava/lang/String;J)V

    return-object p2
.end method

.method public final getUploadPoint(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;

    iget v1, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;-><init>(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    iget-object p3, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 271
    iget v1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 273
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;->L$1:Ljava/lang/Object;

    const-string/jumbo v5, "type=MOVIE"

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;->L$2:Ljava/lang/Object;

    iput v2, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$getUploadPoint$1;->label:I

    const-string v2, "getuploadpoint"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p3, Lorg/json/JSONObject;

    if-nez p3, :cond_4

    const-string p1, ""

    return-object p1

    .line 274
    :cond_4
    const-string/jumbo p1, "upload_url"

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p3, p1, v0, p2, v0}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetString$default(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final reserveServerId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$reserveServerId$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$reserveServerId$1;

    iget v1, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$reserveServerId$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$reserveServerId$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$reserveServerId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$reserveServerId$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$reserveServerId$1;-><init>(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    iget-object p2, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$reserveServerId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 277
    iget v1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$reserveServerId$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$reserveServerId$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 278
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$reserveServerId$1;->L$0:Ljava/lang/Object;

    iput v2, v7, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$reserveServerId$1;->label:I

    const-string v2, "reserve"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p2, Lorg/json/JSONObject;

    if-nez p2, :cond_4

    const-string p1, ""

    return-object p1

    .line 279
    :cond_4
    const-string/jumbo p1, "ticket"

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetString$default(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
