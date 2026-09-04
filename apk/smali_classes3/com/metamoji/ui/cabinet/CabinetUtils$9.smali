.class synthetic Lcom/metamoji/ui/cabinet/CabinetUtils$9;
.super Ljava/lang/Object;
.source "CabinetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/CabinetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$dvm$DvmErrCode:[I

.field static final synthetic $SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 558
    invoke-static {}, Lcom/metamoji/dvm/DvmErrCode;->values()[Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->TagNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v2}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v3}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->RequestCancelError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v4}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v5, Lcom/metamoji/dvm/DvmErrCode;->ServerError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v5}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v6, Lcom/metamoji/dvm/DvmErrCode;->NetworkError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v6}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v7, Lcom/metamoji/dvm/DvmErrCode;->ServerMaintenanceError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v7}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v8, Lcom/metamoji/dvm/DvmErrCode;->TagCountLimitError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v8}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v9, Lcom/metamoji/dvm/DvmErrCode;->InvalidTagNameError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v9}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v10, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v10}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v9, 0xa

    :try_start_9
    sget-object v10, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v11, Lcom/metamoji/dvm/DvmErrCode;->FolderDepthLimitError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v11}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v10, 0xb

    :try_start_a
    sget-object v11, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v12, Lcom/metamoji/dvm/DvmErrCode;->FolderSiblingLimitError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v12}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v11, 0xc

    :try_start_b
    sget-object v12, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v13, Lcom/metamoji/dvm/DvmErrCode;->FolderCountLimitError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v13}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v12, 0xd

    :try_start_c
    sget-object v13, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v14, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistInParentError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v14}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/16 v13, 0xe

    :try_start_d
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistsInSiblingError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->FolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0xf

    aput v16, v14, v15
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->ParentFolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x10

    aput v16, v14, v15
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->MoveDocumentToFolderError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x11

    aput v16, v14, v15
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->CopyDocumentToFolderError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x12

    aput v16, v14, v15
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->LocalDocumentCreationError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x13

    aput v16, v14, v15
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x14

    aput v16, v14, v15
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->DocumentIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x15

    aput v16, v14, v15
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->LocalDocumentIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x16

    aput v16, v14, v15
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->TrafficQuotaExceedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x17

    aput v16, v14, v15
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->OperationDeniedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x18

    aput v16, v14, v15
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->CopyDocumentToLocalError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x19

    aput v16, v14, v15
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->LicenseExpiryDateError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x1a

    aput v16, v14, v15
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->DriveAlreadyDeletedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x1b

    aput v16, v14, v15
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x1c

    aput v16, v14, v15
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotRetrievedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x1d

    aput v16, v14, v15
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->DriveAccessDeniedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x1e

    aput v16, v14, v15
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->NotFoundDataError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x1f

    aput v16, v14, v15
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    sget-object v15, Lcom/metamoji/dvm/DvmErrCode;->TagOrderTooLong:Lcom/metamoji/dvm/DvmErrCode;

    invoke-virtual {v15}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v15

    const/16 v16, 0x20

    aput v16, v14, v15
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 144
    :catch_1f
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->values()[Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v14

    array-length v14, v14

    new-array v14, v14, [I

    sput-object v14, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    :try_start_20
    sget-object v15, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ALL_NOTE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v15}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v15

    aput v1, v14, v15
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    sget-object v14, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v14}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v14

    aput v0, v1, v14
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->COPIED_SHARE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->RECYCLE_BIN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    return-void
.end method
