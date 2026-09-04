.class public final enum Lcom/metamoji/nt/NtNoteController$TargetLayerType;
.super Ljava/lang/Enum;
.source "NtNoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtNoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TargetLayerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtNoteController$TargetLayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtNoteController$TargetLayerType;

.field public static final enum COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

.field public static final enum EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

.field public static final enum PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

.field public static final enum PERSONAL_OFFLINE_EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

.field public static final enum PERSONAL_TEMPLATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

.field public static final enum PRIVATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

.field public static final enum TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtNoteController$TargetLayerType;
    .locals 7

    .line 503
    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PRIVATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v3, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_TEMPLATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v5, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v6, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_OFFLINE_EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 505
    new-instance v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    const-string v1, "EDIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$TargetLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 506
    new-instance v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    const-string v1, "PRIVATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$TargetLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PRIVATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 507
    new-instance v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    const-string v1, "COMMON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$TargetLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 508
    new-instance v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    const-string v1, "PERSONAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$TargetLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 509
    new-instance v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    const-string v1, "PERSONAL_TEMPLATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$TargetLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_TEMPLATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 511
    new-instance v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    const-string v1, "TEACHER_PERSONAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$TargetLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 513
    new-instance v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    const-string v1, "PERSONAL_OFFLINE_EDIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$TargetLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_OFFLINE_EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 503
    invoke-static {}, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->$values()[Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->$VALUES:[Lcom/metamoji/nt/NtNoteController$TargetLayerType;

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

    .line 503
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtNoteController$TargetLayerType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 503
    const-class v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtNoteController$TargetLayerType;
    .locals 1

    .line 503
    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->$VALUES:[Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtNoteController$TargetLayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 516
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 527
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_6
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public valueOf(I)Lcom/metamoji/nt/NtNoteController$TargetLayerType;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 543
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 541
    :pswitch_0
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_OFFLINE_EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    return-object p1

    .line 539
    :pswitch_1
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    return-object p1

    .line 537
    :pswitch_2
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_TEMPLATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    return-object p1

    .line 536
    :pswitch_3
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    return-object p1

    .line 535
    :pswitch_4
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    return-object p1

    .line 534
    :pswitch_5
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PRIVATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    return-object p1

    .line 533
    :pswitch_6
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
