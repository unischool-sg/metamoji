.class synthetic Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$2;
.super Ljava/lang/Object;
.source "ScMonitoringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$df$controller$PageEventContext$Kind:[I

.field static final synthetic $SwitchMap$com$metamoji$nt$NtCommand:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 516
    invoke-static {}, Lcom/metamoji/nt/NtCommand;->values()[Lcom/metamoji/nt/NtCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$2;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_MONITORING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$2;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_EVERYONE_ANSWER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :catch_1
    invoke-static {}, Lcom/metamoji/df/controller/PageEventContext$Kind;->values()[Lcom/metamoji/df/controller/PageEventContext$Kind;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$2;->$SwitchMap$com$metamoji$df$controller$PageEventContext$Kind:[I

    :try_start_2
    sget-object v3, Lcom/metamoji/df/controller/PageEventContext$Kind;->Inserted:Lcom/metamoji/df/controller/PageEventContext$Kind;

    invoke-virtual {v3}, Lcom/metamoji/df/controller/PageEventContext$Kind;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$2;->$SwitchMap$com$metamoji$df$controller$PageEventContext$Kind:[I

    sget-object v2, Lcom/metamoji/df/controller/PageEventContext$Kind;->Deleted:Lcom/metamoji/df/controller/PageEventContext$Kind;

    invoke-virtual {v2}, Lcom/metamoji/df/controller/PageEventContext$Kind;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$2;->$SwitchMap$com$metamoji$df$controller$PageEventContext$Kind:[I

    sget-object v1, Lcom/metamoji/df/controller/PageEventContext$Kind;->Moved:Lcom/metamoji/df/controller/PageEventContext$Kind;

    invoke-virtual {v1}, Lcom/metamoji/df/controller/PageEventContext$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$2;->$SwitchMap$com$metamoji$df$controller$PageEventContext$Kind:[I

    sget-object v1, Lcom/metamoji/df/controller/PageEventContext$Kind;->CurrentPageChanged:Lcom/metamoji/df/controller/PageEventContext$Kind;

    invoke-virtual {v1}, Lcom/metamoji/df/controller/PageEventContext$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
