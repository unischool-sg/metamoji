.class public final enum Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;
.super Ljava/lang/Enum;
.source "VfVideoFileManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/VfVideoFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaFilesOrderDir"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000eB\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
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
        "ASCENDING",
        "DESCENDING",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

.field public static final enum ASCENDING:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

.field public static final Companion:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir$Companion;

.field public static final enum DESCENDING:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;


# instance fields
.field private final id:I

.field private final string:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;
    .locals 2

    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->ASCENDING:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    sget-object v1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->DESCENDING:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    filled-new-array {v0, v1}, [Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    const/4 v1, 0x0

    const-string v2, "ASC"

    const-string v3, "ASCENDING"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->ASCENDING:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    .line 56
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    const/4 v1, 0x1

    const-string v2, "DESC"

    const-string v3, "DESCENDING"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->DESCENDING:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    invoke-static {}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->$values()[Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->$VALUES:[Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir$Companion;

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

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->string:Ljava/lang/String;

    iput p4, p0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->id:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;
    .locals 1

    const-class v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;
    .locals 1

    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->$VALUES:[Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->id:I

    return v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->string:Ljava/lang/String;

    return-object v0
.end method
