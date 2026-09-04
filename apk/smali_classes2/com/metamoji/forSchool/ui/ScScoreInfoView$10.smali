.class synthetic Lcom/metamoji/forSchool/ui/ScScoreInfoView$10;
.super Ljava/lang/Object;
.source "ScScoreInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScScoreInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$forSchool$ScSchoolManager$ScoreStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 584
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->values()[Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$10;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$ScoreStatus:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->NOTREPORT:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$10;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$ScoreStatus:[I

    sget-object v1, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->REPORTED:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$10;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$ScoreStatus:[I

    sget-object v1, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->SCORED:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
