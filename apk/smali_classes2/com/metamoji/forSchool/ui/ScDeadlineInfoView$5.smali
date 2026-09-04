.class synthetic Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$5;
.super Ljava/lang/Object;
.source "ScDeadlineInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$forSchool$ScSchoolManager$DeadlineMode:[I

.field static final synthetic $SwitchMap$com$metamoji$forSchool$ScSchoolManager$DeadlineStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 304
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->values()[Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$5;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$DeadlineStatus:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->OFFLINE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$5;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$DeadlineStatus:[I

    sget-object v3, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->PREVSTART:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$5;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$DeadlineStatus:[I

    sget-object v3, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->RUNNING:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$5;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$DeadlineStatus:[I

    sget-object v3, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->END:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 361
    :catch_3
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->values()[Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$5;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$DeadlineMode:[I

    :try_start_4
    sget-object v3, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->DONTSEE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$5;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$DeadlineMode:[I

    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->READONLY:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
