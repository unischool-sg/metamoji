.class public final enum Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;
.super Ljava/lang/Enum;
.source "ScSelectNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScSelectNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScNoteListItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

.field public static final enum NoteListItemType_Back:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

.field public static final enum NoteListItemType_CRBox:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

.field public static final enum NoteListItemType_CRBoxClass:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

.field public static final enum NoteListItemType_CRBoxOld:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

.field public static final enum NoteListItemType_CRBoxYear:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

.field public static final enum NoteListItemType_Folder:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

.field public static final enum NoteListItemType_LocalDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

.field public static final enum NoteListItemType_Note:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

.field public static final enum NoteListItemType_Share:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

.field public static final enum NoteListItemType_SharedDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

.field public static final enum NoteListItemType_Template:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;
    .locals 11

    .line 89
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Note:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Folder:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Back:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    sget-object v3, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_LocalDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    sget-object v4, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_SharedDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    sget-object v5, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Template:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    sget-object v6, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxClass:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    sget-object v7, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxYear:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    sget-object v8, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBox:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    sget-object v9, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Share:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    sget-object v10, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxOld:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    filled-new-array/range {v0 .. v10}, [Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 90
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const-string v1, "NoteListItemType_Note"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Note:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    .line 91
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const-string v1, "NoteListItemType_Folder"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Folder:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    .line 92
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const-string v1, "NoteListItemType_Back"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Back:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    .line 93
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const-string v1, "NoteListItemType_LocalDrive"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_LocalDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    .line 94
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const-string v1, "NoteListItemType_SharedDrive"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_SharedDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    .line 95
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const-string v1, "NoteListItemType_Template"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Template:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    .line 96
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const-string v1, "NoteListItemType_CRBoxClass"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxClass:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    .line 97
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const-string v1, "NoteListItemType_CRBoxYear"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxYear:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    .line 98
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const-string v1, "NoteListItemType_CRBox"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBox:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    .line 99
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const-string v1, "NoteListItemType_Share"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Share:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    .line 100
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const-string v1, "NoteListItemType_CRBoxOld"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxOld:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    .line 89
    invoke-static {}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->$values()[Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->$VALUES:[Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

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

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 89
    const-class v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;
    .locals 1

    .line 89
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->$VALUES:[Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-virtual {v0}, [Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    return-object v0
.end method
