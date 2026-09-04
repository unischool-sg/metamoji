.class public final enum Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;
.super Ljava/lang/Enum;
.source "CabinetTreeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/CabinetTreeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum ALL_NOTE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum CALENDAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum COPIED_SHARE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum LOCAL_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum RECYCLE_BIN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum SHARED_DRIVE_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field public static final enum UNKNOWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;
    .locals 17

    .line 75
    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ALL_NOTE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->RECYCLE_BIN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v5, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v6, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v7, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v8, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v9, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v10, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v11, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v12, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v13, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v15, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->COPIED_SHARE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v16, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CALENDAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    filled-new-array/range {v1 .. v16}, [Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "LOCAL_ROOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 77
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "ALL_NOTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ALL_NOTE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 78
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "RECYCLE_BIN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->RECYCLE_BIN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 79
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "TEMPLATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 80
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "LOCAL_FOLDER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 81
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "SHARED_DRIVE_PARENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 82
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "SHARED_DRIVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 83
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "SHARED_DRIVE_OWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 84
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "SHARED_DRIVE_FOLDER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 85
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "CRBOX"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 86
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "CRBOX_CLASS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 87
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "CRBOX_OLD"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 88
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "CRBOX_YEAR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 89
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 90
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "COPIED_SHARE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->COPIED_SHARE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 91
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v1, "CALENDAR"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CALENDAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 75
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->$values()[Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->$VALUES:[Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

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

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 75
    const-class v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;
    .locals 1

    .line 75
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->$VALUES:[Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v0}, [Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-object v0
.end method
