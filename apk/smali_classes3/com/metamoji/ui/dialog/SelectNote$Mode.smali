.class public final enum Lcom/metamoji/ui/dialog/SelectNote$Mode;
.super Ljava/lang/Enum;
.source "SelectNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SelectNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/dialog/SelectNote$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/dialog/SelectNote$Mode;

.field public static final enum CopyNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

.field public static final enum MoveNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

.field public static final enum SelectNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

.field public static final enum SelectShareNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

.field public static final enum SelectSharedDrive:Lcom/metamoji/ui/dialog/SelectNote$Mode;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/dialog/SelectNote$Mode;
    .locals 5

    .line 93
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectSharedDrive:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v2, Lcom/metamoji/ui/dialog/SelectNote$Mode;->CopyNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v3, Lcom/metamoji/ui/dialog/SelectNote$Mode;->MoveNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v4, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectShareNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/ui/dialog/SelectNote$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 94
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;

    const-string v1, "SelectNote"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/SelectNote$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    .line 95
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;

    const-string v1, "SelectSharedDrive"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/SelectNote$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectSharedDrive:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    .line 96
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;

    const-string v1, "CopyNote"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/SelectNote$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;->CopyNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    .line 97
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;

    const-string v1, "MoveNote"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/SelectNote$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;->MoveNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    .line 98
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;

    const-string v1, "SelectShareNote"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/SelectNote$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectShareNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    .line 93
    invoke-static {}, Lcom/metamoji/ui/dialog/SelectNote$Mode;->$values()[Lcom/metamoji/ui/dialog/SelectNote$Mode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;->$VALUES:[Lcom/metamoji/ui/dialog/SelectNote$Mode;

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

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/dialog/SelectNote$Mode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 93
    const-class v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/dialog/SelectNote$Mode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/dialog/SelectNote$Mode;
    .locals 1

    .line 93
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;->$VALUES:[Lcom/metamoji/ui/dialog/SelectNote$Mode;

    invoke-virtual {v0}, [Lcom/metamoji/ui/dialog/SelectNote$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/dialog/SelectNote$Mode;

    return-object v0
.end method
