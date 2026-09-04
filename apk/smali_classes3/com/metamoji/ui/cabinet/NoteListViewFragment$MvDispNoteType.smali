.class final enum Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;
.super Ljava/lang/Enum;
.source "NoteListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MvDispNoteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

.field public static final enum MvDispNoteType_All:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

.field public static final enum MvDispNoteType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

.field public static final enum MvDispNoteType_ShareOnly:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;
    .locals 3

    .line 393
    sget-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->MvDispNoteType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    sget-object v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->MvDispNoteType_All:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    sget-object v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->MvDispNoteType_ShareOnly:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 394
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    const-string v1, "MvDispNoteType_Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->MvDispNoteType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    .line 395
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    const-string v1, "MvDispNoteType_All"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->MvDispNoteType_All:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    .line 396
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    const-string v1, "MvDispNoteType_ShareOnly"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->MvDispNoteType_ShareOnly:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    .line 393
    invoke-static {}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->$values()[Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->$VALUES:[Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

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

    .line 393
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 393
    const-class v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;
    .locals 1

    .line 393
    sget-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->$VALUES:[Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    invoke-virtual {v0}, [Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    return-object v0
.end method
