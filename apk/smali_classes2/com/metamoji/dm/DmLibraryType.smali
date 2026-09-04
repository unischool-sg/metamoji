.class public final enum Lcom/metamoji/dm/DmLibraryType;
.super Ljava/lang/Enum;
.source "DmLibraryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/dm/DmLibraryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/dm/DmLibraryType;

.field public static final enum LibraryTypeBgImage:Lcom/metamoji/dm/DmLibraryType;

.field public static final enum LibraryTypeInk:Lcom/metamoji/dm/DmLibraryType;

.field public static final enum LibraryTypeItem:Lcom/metamoji/dm/DmLibraryType;

.field public static final enum LibraryTypeNoteStyle:Lcom/metamoji/dm/DmLibraryType;

.field public static final enum LibraryTypePen:Lcom/metamoji/dm/DmLibraryType;

.field public static final enum LibraryTypeSheetTemplate:Lcom/metamoji/dm/DmLibraryType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/dm/DmLibraryType;
    .locals 6

    .line 10
    sget-object v0, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeItem:Lcom/metamoji/dm/DmLibraryType;

    sget-object v1, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeSheetTemplate:Lcom/metamoji/dm/DmLibraryType;

    sget-object v2, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeNoteStyle:Lcom/metamoji/dm/DmLibraryType;

    sget-object v3, Lcom/metamoji/dm/DmLibraryType;->LibraryTypePen:Lcom/metamoji/dm/DmLibraryType;

    sget-object v4, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeInk:Lcom/metamoji/dm/DmLibraryType;

    sget-object v5, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeBgImage:Lcom/metamoji/dm/DmLibraryType;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/dm/DmLibraryType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/metamoji/dm/DmLibraryType;

    const-string v1, "LibraryTypeItem"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/DmLibraryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeItem:Lcom/metamoji/dm/DmLibraryType;

    .line 13
    new-instance v0, Lcom/metamoji/dm/DmLibraryType;

    const-string v1, "LibraryTypeSheetTemplate"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/DmLibraryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeSheetTemplate:Lcom/metamoji/dm/DmLibraryType;

    .line 14
    new-instance v0, Lcom/metamoji/dm/DmLibraryType;

    const-string v1, "LibraryTypeNoteStyle"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/DmLibraryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeNoteStyle:Lcom/metamoji/dm/DmLibraryType;

    .line 15
    new-instance v0, Lcom/metamoji/dm/DmLibraryType;

    const-string v1, "LibraryTypePen"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/DmLibraryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/DmLibraryType;->LibraryTypePen:Lcom/metamoji/dm/DmLibraryType;

    .line 16
    new-instance v0, Lcom/metamoji/dm/DmLibraryType;

    const-string v1, "LibraryTypeInk"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/DmLibraryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeInk:Lcom/metamoji/dm/DmLibraryType;

    .line 17
    new-instance v0, Lcom/metamoji/dm/DmLibraryType;

    const-string v1, "LibraryTypeBgImage"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/DmLibraryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeBgImage:Lcom/metamoji/dm/DmLibraryType;

    .line 10
    invoke-static {}, Lcom/metamoji/dm/DmLibraryType;->$values()[Lcom/metamoji/dm/DmLibraryType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/dm/DmLibraryType;->$VALUES:[Lcom/metamoji/dm/DmLibraryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/dm/DmLibraryType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 10
    const-class v0, Lcom/metamoji/dm/DmLibraryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/dm/DmLibraryType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/dm/DmLibraryType;
    .locals 1

    .line 10
    sget-object v0, Lcom/metamoji/dm/DmLibraryType;->$VALUES:[Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0}, [Lcom/metamoji/dm/DmLibraryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/dm/DmLibraryType;

    return-object v0
.end method
