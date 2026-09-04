.class public final Lcom/metamoji/media/video/VfClipInfo;
.super Ljava/lang/Object;
.source "VfClipInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/VfClipInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0018\u0008\u0086\u0008\u0018\u0000 ;2\u00020\u0001:\u0001;B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011B\u0011\u0008\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0010\u0010\u0014J\u0006\u0010#\u001a\u00020$J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\u0005H\u00c6\u0003J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\t\u0010/\u001a\u00020\u0003H\u00c6\u0003J\t\u00100\u001a\u00020\u0003H\u00c6\u0003J\t\u00101\u001a\u00020\u0003H\u00c6\u0003J\t\u00102\u001a\u00020\u0003H\u00c6\u0003J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\t\u00104\u001a\u00020\u0005H\u00c6\u0003J\t\u00105\u001a\u00020\u000fH\u00c6\u0003Jw\u00106\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u00c6\u0001J\u0013\u00107\u001a\u00020$2\u0008\u00108\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00109\u001a\u00020\u000fH\u00d6\u0001J\t\u0010:\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0016R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0016R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0016R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0016R\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0018R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010%\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u0016R\u0011\u0010\'\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u0016R\u0011\u0010)\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u0016\u00a8\u0006<"
    }
    d2 = {
        "Lcom/metamoji/media/video/VfClipInfo;",
        "",
        "serverID",
        "",
        "clipid",
        "",
        "posterframe",
        "playback_url",
        "playback_time",
        "title",
        "comment",
        "timestamp",
        "registdate",
        "clipsize",
        "invalidinfo",
        "",
        "<init>",
        "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "getServerID",
        "()Ljava/lang/String;",
        "getClipid",
        "()J",
        "getPosterframe",
        "getPlayback_url",
        "getPlayback_time",
        "getTitle",
        "getComment",
        "getTimestamp",
        "getRegistdate",
        "getClipsize",
        "getInvalidinfo",
        "()I",
        "existInServer",
        "",
        "durationText",
        "getDurationText",
        "creationDateText",
        "getCreationDateText",
        "registrationDateText",
        "getRegistrationDateText",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/media/video/VfClipInfo$Companion;

.field public static final INVALID_TEXT:Ljava/lang/String; = "----"


# instance fields
.field private final clipid:J

.field private final clipsize:J

.field private final comment:Ljava/lang/String;

.field private final invalidinfo:I

.field private final playback_time:Ljava/lang/String;

.field private final playback_url:Ljava/lang/String;

.field private final posterframe:Ljava/lang/String;

.field private final registdate:Ljava/lang/String;

.field private final serverID:Ljava/lang/String;

.field private final timestamp:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/VfClipInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/VfClipInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/VfClipInfo;->Companion:Lcom/metamoji/media/video/VfClipInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    const-string/jumbo v0, "serverID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "posterframe"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playback_url"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playback_time"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comment"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timestamp"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registdate"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/metamoji/media/video/VfClipInfo;->serverID:Ljava/lang/String;

    .line 14
    iput-wide p2, p0, Lcom/metamoji/media/video/VfClipInfo;->clipid:J

    .line 15
    iput-object p4, p0, Lcom/metamoji/media/video/VfClipInfo;->posterframe:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_url:Ljava/lang/String;

    .line 17
    iput-object p6, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_time:Ljava/lang/String;

    .line 18
    iput-object p7, p0, Lcom/metamoji/media/video/VfClipInfo;->title:Ljava/lang/String;

    .line 19
    iput-object p8, p0, Lcom/metamoji/media/video/VfClipInfo;->comment:Ljava/lang/String;

    .line 20
    iput-object p9, p0, Lcom/metamoji/media/video/VfClipInfo;->timestamp:Ljava/lang/String;

    .line 21
    iput-object p10, p0, Lcom/metamoji/media/video/VfClipInfo;->registdate:Ljava/lang/String;

    .line 22
    iput-wide p11, p0, Lcom/metamoji/media/video/VfClipInfo;->clipsize:J

    .line 23
    iput p13, p0, Lcom/metamoji/media/video/VfClipInfo;->invalidinfo:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "jsonObject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v1, "ticket"

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v0, v1, v6, v7, v6}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetString$default(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 27
    const-string v1, "clipid"

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetLong$default(Lorg/json/JSONObject;Ljava/lang/String;JILjava/lang/Object;)J

    move-result-wide v10

    .line 28
    const-string v1, "posterframe"

    invoke-static {v0, v1, v6, v7, v6}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetString$default(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 29
    const-string v1, "playback_url"

    invoke-static {v0, v1, v6, v7, v6}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetString$default(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 30
    const-string v1, "playback_time"

    invoke-static {v0, v1, v6, v7, v6}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetString$default(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 31
    const-string/jumbo v1, "title"

    invoke-static {v0, v1, v6, v7, v6}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetString$default(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 32
    const-string v1, "comment"

    invoke-static {v0, v1, v6, v7, v6}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetString$default(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 33
    const-string/jumbo v1, "timestamp"

    invoke-static {v0, v1, v6, v7, v6}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetString$default(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 34
    const-string v1, "registdate"

    invoke-static {v0, v1, v6, v7, v6}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetString$default(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 35
    const-string v1, "clipsize"

    invoke-static/range {v0 .. v5}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetLong$default(Lorg/json/JSONObject;Ljava/lang/String;JILjava/lang/Object;)J

    move-result-wide v19

    .line 36
    const-string v1, "invalidinfo"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v7, v6}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetInt$default(Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/Object;)I

    move-result v21

    move-object/from16 v8, p0

    .line 25
    invoke-direct/range {v8 .. v21}, Lcom/metamoji/media/video/VfClipInfo;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/media/video/VfClipInfo;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)Lcom/metamoji/media/video/VfClipInfo;
    .locals 12

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/metamoji/media/video/VfClipInfo;->serverID:Ljava/lang/String;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/metamoji/media/video/VfClipInfo;->clipid:J

    goto :goto_0

    :cond_1
    move-wide v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/metamoji/media/video/VfClipInfo;->posterframe:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object/from16 v3, p4

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_url:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object/from16 v4, p5

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_time:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object/from16 v5, p6

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/metamoji/media/video/VfClipInfo;->title:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object/from16 v6, p7

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/metamoji/media/video/VfClipInfo;->comment:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object/from16 v7, p8

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/metamoji/media/video/VfClipInfo;->timestamp:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object/from16 v8, p9

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/metamoji/media/video/VfClipInfo;->registdate:Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object/from16 v9, p10

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    iget-wide v10, p0, Lcom/metamoji/media/video/VfClipInfo;->clipsize:J

    goto :goto_8

    :cond_9
    move-wide/from16 v10, p11

    :goto_8
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/metamoji/media/video/VfClipInfo;->invalidinfo:I

    move/from16 p15, v0

    goto :goto_9

    :cond_a
    move/from16 p15, p13

    :goto_9
    move-object p2, p0

    move-object p3, p1

    move-wide/from16 p4, v1

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v8

    move-object/from16 p12, v9

    move-wide/from16 p13, v10

    invoke-virtual/range {p2 .. p15}, Lcom/metamoji/media/video/VfClipInfo;->copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lcom/metamoji/media/video/VfClipInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->serverID:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/media/video/VfClipInfo;->clipsize:J

    return-wide v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/metamoji/media/video/VfClipInfo;->invalidinfo:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/media/video/VfClipInfo;->clipid:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->posterframe:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_time:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->registdate:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lcom/metamoji/media/video/VfClipInfo;
    .locals 15

    const-string/jumbo v0, "serverID"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "posterframe"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playback_url"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playback_time"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comment"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timestamp"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registdate"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/media/video/VfClipInfo;

    move-wide/from16 v3, p2

    move-wide/from16 v12, p11

    move/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/metamoji/media/video/VfClipInfo;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/media/video/VfClipInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/media/video/VfClipInfo;

    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->serverID:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/VfClipInfo;->serverID:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/metamoji/media/video/VfClipInfo;->clipid:J

    iget-wide v5, p1, Lcom/metamoji/media/video/VfClipInfo;->clipid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->posterframe:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/VfClipInfo;->posterframe:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/VfClipInfo;->playback_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_time:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/VfClipInfo;->playback_time:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/VfClipInfo;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->comment:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/VfClipInfo;->comment:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->timestamp:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/VfClipInfo;->timestamp:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->registdate:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/VfClipInfo;->registdate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/metamoji/media/video/VfClipInfo;->clipsize:J

    iget-wide v5, p1, Lcom/metamoji/media/video/VfClipInfo;->clipsize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/metamoji/media/video/VfClipInfo;->invalidinfo:I

    iget p1, p1, Lcom/metamoji/media/video/VfClipInfo;->invalidinfo:I

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final existInServer()Z
    .locals 4

    .line 39
    iget-wide v0, p0, Lcom/metamoji/media/video/VfClipInfo;->clipid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 40
    iget v0, p0, Lcom/metamoji/media/video/VfClipInfo;->invalidinfo:I

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->serverID:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_url:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getClipid()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/metamoji/media/video/VfClipInfo;->clipid:J

    return-wide v0
.end method

.method public final getClipsize()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/metamoji/media/video/VfClipInfo;->clipsize:J

    return-wide v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreationDateText()Ljava/lang/String;
    .locals 3

    .line 79
    sget-object v0, Lcom/metamoji/media/video/VfClipInfo;->Companion:Lcom/metamoji/media/video/VfClipInfo$Companion;

    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->timestamp:Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "toLong(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/video/VfClipInfo$Companion;->formatDateFromMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDurationText()Ljava/lang/String;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_time:Ljava/lang/String;

    .line 67
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 74
    :cond_1
    const-string v0, "----"

    return-object v0
.end method

.method public final getInvalidinfo()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/metamoji/media/video/VfClipInfo;->invalidinfo:I

    return v0
.end method

.method public final getPlayback_time()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_time:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayback_url()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosterframe()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->posterframe:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegistdate()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->registdate:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegistrationDateText()Ljava/lang/String;
    .locals 3

    .line 82
    sget-object v0, Lcom/metamoji/media/video/VfClipInfo;->Companion:Lcom/metamoji/media/video/VfClipInfo$Companion;

    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->registdate:Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "toLong(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/video/VfClipInfo$Companion;->formatDateFromMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getServerID()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->serverID:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->serverID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/metamoji/media/video/VfClipInfo;->clipid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->posterframe:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_time:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->comment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->timestamp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/VfClipInfo;->registdate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/metamoji/media/video/VfClipInfo;->clipsize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/metamoji/media/video/VfClipInfo;->invalidinfo:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/metamoji/media/video/VfClipInfo;->serverID:Ljava/lang/String;

    iget-wide v1, p0, Lcom/metamoji/media/video/VfClipInfo;->clipid:J

    iget-object v3, p0, Lcom/metamoji/media/video/VfClipInfo;->posterframe:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_url:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/media/video/VfClipInfo;->playback_time:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/media/video/VfClipInfo;->title:Ljava/lang/String;

    iget-object v7, p0, Lcom/metamoji/media/video/VfClipInfo;->comment:Ljava/lang/String;

    iget-object v8, p0, Lcom/metamoji/media/video/VfClipInfo;->timestamp:Ljava/lang/String;

    iget-object v9, p0, Lcom/metamoji/media/video/VfClipInfo;->registdate:Ljava/lang/String;

    iget-wide v10, p0, Lcom/metamoji/media/video/VfClipInfo;->clipsize:J

    iget v12, p0, Lcom/metamoji/media/video/VfClipInfo;->invalidinfo:I

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "VfClipInfo(serverID="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ", clipid="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", posterframe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playback_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playback_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", registdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clipsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", invalidinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
