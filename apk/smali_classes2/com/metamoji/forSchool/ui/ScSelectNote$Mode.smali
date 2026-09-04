.class public final enum Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;
.super Ljava/lang/Enum;
.source "ScSelectNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScSelectNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

.field public static final enum AllFolder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

.field public static final enum CopyNote:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

.field public static final enum Folder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

.field public static final enum MoveNote:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

.field public static final enum Note:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

.field public static final enum ShareFolder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;
    .locals 6

    .line 103
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Note:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->AllFolder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->ShareFolder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v3, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Folder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v4, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->CopyNote:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v5, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->MoveNote:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 104
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    const-string v1, "Note"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Note:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    .line 105
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    const-string v1, "AllFolder"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->AllFolder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    .line 106
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    const-string v1, "ShareFolder"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->ShareFolder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    .line 107
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    const-string v1, "Folder"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Folder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    .line 108
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    const-string v1, "CopyNote"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->CopyNote:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    .line 109
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    const-string v1, "MoveNote"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->MoveNote:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    .line 103
    invoke-static {}, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->$values()[Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->$VALUES:[Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

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

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 103
    const-class v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;
    .locals 1

    .line 103
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->$VALUES:[Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    invoke-virtual {v0}, [Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    return-object v0
.end method
