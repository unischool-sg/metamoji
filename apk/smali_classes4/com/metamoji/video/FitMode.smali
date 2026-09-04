.class public final enum Lcom/metamoji/video/FitMode;
.super Ljava/lang/Enum;
.source "AmvFitter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/video/FitMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/video/FitMode;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Width",
        "Height",
        "Inside",
        "Fit",
        "video"
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

.field private static final synthetic $VALUES:[Lcom/metamoji/video/FitMode;

.field public static final enum Fit:Lcom/metamoji/video/FitMode;

.field public static final enum Height:Lcom/metamoji/video/FitMode;

.field public static final enum Inside:Lcom/metamoji/video/FitMode;

.field public static final enum Width:Lcom/metamoji/video/FitMode;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/video/FitMode;
    .locals 4

    sget-object v0, Lcom/metamoji/video/FitMode;->Width:Lcom/metamoji/video/FitMode;

    sget-object v1, Lcom/metamoji/video/FitMode;->Height:Lcom/metamoji/video/FitMode;

    sget-object v2, Lcom/metamoji/video/FitMode;->Inside:Lcom/metamoji/video/FitMode;

    sget-object v3, Lcom/metamoji/video/FitMode;->Fit:Lcom/metamoji/video/FitMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/video/FitMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/metamoji/video/FitMode;

    const-string v1, "Width"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/video/FitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/video/FitMode;->Width:Lcom/metamoji/video/FitMode;

    .line 15
    new-instance v0, Lcom/metamoji/video/FitMode;

    const-string v1, "Height"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/video/FitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/video/FitMode;->Height:Lcom/metamoji/video/FitMode;

    .line 16
    new-instance v0, Lcom/metamoji/video/FitMode;

    const-string v1, "Inside"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/video/FitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/video/FitMode;->Inside:Lcom/metamoji/video/FitMode;

    .line 17
    new-instance v0, Lcom/metamoji/video/FitMode;

    const-string v1, "Fit"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/video/FitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/video/FitMode;->Fit:Lcom/metamoji/video/FitMode;

    invoke-static {}, Lcom/metamoji/video/FitMode;->$values()[Lcom/metamoji/video/FitMode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/video/FitMode;->$VALUES:[Lcom/metamoji/video/FitMode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/video/FitMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/video/FitMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/video/FitMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/video/FitMode;
    .locals 1

    const-class v0, Lcom/metamoji/video/FitMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/FitMode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/video/FitMode;
    .locals 1

    sget-object v0, Lcom/metamoji/video/FitMode;->$VALUES:[Lcom/metamoji/video/FitMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/video/FitMode;

    return-object v0
.end method
