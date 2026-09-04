.class public final enum Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;
.super Ljava/lang/Enum;
.source "SelectNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SelectNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoteListItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

.field public static final enum NoteListItemType_Back:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

.field public static final enum NoteListItemType_Folder:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

.field public static final enum NoteListItemType_LocalDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

.field public static final enum NoteListItemType_Note:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

.field public static final enum NoteListItemType_Share:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

.field public static final enum NoteListItemType_SharedDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

.field public static final enum NoteListItemType_Template:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;
    .locals 7

    .line 83
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Note:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Folder:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    sget-object v2, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Back:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    sget-object v3, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_LocalDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    sget-object v4, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_SharedDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    sget-object v5, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Template:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    sget-object v6, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Share:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const-string v1, "NoteListItemType_Note"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Note:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    .line 85
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const-string v1, "NoteListItemType_Folder"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Folder:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    .line 86
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const-string v1, "NoteListItemType_Back"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Back:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    .line 87
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const-string v1, "NoteListItemType_LocalDrive"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_LocalDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    .line 88
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const-string v1, "NoteListItemType_SharedDrive"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_SharedDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    .line 89
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const-string v1, "NoteListItemType_Template"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Template:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    .line 90
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const-string v1, "NoteListItemType_Share"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Share:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    .line 83
    invoke-static {}, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->$values()[Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->$VALUES:[Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

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

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 83
    const-class v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;
    .locals 1

    .line 83
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->$VALUES:[Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-virtual {v0}, [Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    return-object v0
.end method
