.class final enum Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;
.super Ljava/lang/Enum;
.source "NoteListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NoteListModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

.field public static final enum NoteListModeType_Detail:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

.field public static final enum NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

.field public static final enum NoteListModeType_Simple:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;
    .locals 3

    .line 387
    sget-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Detail:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Simple:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 388
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    const-string v1, "NoteListModeType_Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 389
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    const-string v1, "NoteListModeType_Detail"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Detail:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 390
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    const-string v1, "NoteListModeType_Simple"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Simple:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 387
    invoke-static {}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->$values()[Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->$VALUES:[Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

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

    .line 387
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 387
    const-class v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;
    .locals 1

    .line 387
    sget-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->$VALUES:[Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    invoke-virtual {v0}, [Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    return-object v0
.end method
