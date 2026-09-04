.class public final enum Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;
.super Ljava/lang/Enum;
.source "VfUploadStatusDB.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/uploader/VfUploadStatusDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000eB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
        "",
        "intValue",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getIntValue",
        "()I",
        "INIT",
        "WAITING",
        "UPLOADING",
        "DONE",
        "ERROR",
        "INVALID",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

.field public static final Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status$Companion;

.field public static final enum DONE:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

.field public static final enum ERROR:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

.field public static final enum INIT:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

.field public static final enum INVALID:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

.field public static final enum UPLOADING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

.field public static final enum WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;


# instance fields
.field private final intValue:I


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;
    .locals 6

    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INIT:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    sget-object v2, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->UPLOADING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    sget-object v3, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->DONE:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    sget-object v4, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ERROR:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    sget-object v5, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INVALID:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INIT:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    .line 38
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    const-string v1, "WAITING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    .line 39
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    const-string v1, "UPLOADING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->UPLOADING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    .line 40
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    const-string v1, "DONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->DONE:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    .line 41
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ERROR:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    .line 42
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    const/4 v1, 0x5

    const/4 v2, -0x1

    const-string v3, "INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INVALID:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-static {}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->$values()[Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->$VALUES:[Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->intValue:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;
    .locals 1

    const-class v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;
    .locals 1

    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->$VALUES:[Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    return-object v0
.end method


# virtual methods
.method public final getIntValue()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->intValue:I

    return v0
.end method
