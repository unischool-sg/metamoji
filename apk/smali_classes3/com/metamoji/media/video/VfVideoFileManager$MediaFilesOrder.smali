.class public final enum Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;
.super Ljava/lang/Enum;
.source "VfVideoFileManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/VfVideoFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaFilesOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0013B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "",
        "string",
        "",
        "id",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;I)V",
        "getString",
        "()Ljava/lang/String;",
        "getId",
        "()I",
        "TIMESTAMP",
        "REGISTDATE",
        "DURATION",
        "SIZE",
        "TITLE",
        "COMMENT",
        "INDEX",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

.field public static final enum COMMENT:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

.field public static final Companion:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder$Companion;

.field public static final enum DURATION:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

.field public static final enum INDEX:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

.field public static final enum REGISTDATE:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

.field public static final enum SIZE:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

.field public static final enum TIMESTAMP:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

.field public static final enum TITLE:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;


# instance fields
.field private final id:I

.field private final string:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;
    .locals 7

    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->TIMESTAMP:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    sget-object v1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->REGISTDATE:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    sget-object v2, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->DURATION:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    sget-object v3, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->SIZE:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    sget-object v4, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->TITLE:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    sget-object v5, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->COMMENT:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    sget-object v6, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->INDEX:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    const/4 v1, 0x0

    const-string/jumbo v2, "timestamp"

    const-string v3, "TIMESTAMP"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->TIMESTAMP:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    .line 37
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    const/4 v1, 0x1

    const-string v2, "registdate"

    const-string v3, "REGISTDATE"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->REGISTDATE:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    .line 38
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    const/4 v1, 0x2

    const-string v2, "duration"

    const-string v3, "DURATION"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->DURATION:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    .line 39
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    const/4 v1, 0x3

    const-string/jumbo v2, "size"

    const-string v3, "SIZE"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->SIZE:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    .line 40
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    const/4 v1, 0x4

    const-string/jumbo v2, "title"

    const-string v3, "TITLE"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->TITLE:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    .line 42
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    const/4 v1, 0x5

    const-string v2, "comment"

    const-string v3, "COMMENT"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->COMMENT:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    .line 43
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    const/4 v1, 0x6

    const-string v2, "index"

    const-string v3, "INDEX"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->INDEX:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    invoke-static {}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->$values()[Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->$VALUES:[Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->string:Ljava/lang/String;

    iput p4, p0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->id:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;
    .locals 1

    const-class v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;
    .locals 1

    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->$VALUES:[Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->id:I

    return v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->string:Ljava/lang/String;

    return-object v0
.end method
