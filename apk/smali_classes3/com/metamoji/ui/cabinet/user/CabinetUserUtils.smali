.class public final Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;
.super Ljava/lang/Object;
.source "CabinetUserUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;
    }
.end annotation


# static fields
.field private static final MMJ_SSO_OIDC_KEY_CODE:Ljava/lang/String; = "code"

.field private static final MMJ_SSO_OIDC_KEY_COOPERATION:Ljava/lang/String; = "cooperation"

.field private static final MMJ_SSO_OIDC_SUCCESS_PREFIX:Ljava/lang/String; = "mmjsso://oidcsuccess?"

.field private static final MMJ_SSO_REQUEST_URL_FORMAT:Ljava/lang/String; = "%ssso/oidcidpinfo?authentication=%s&cooperation=%s"

.field private static final MMJ_SSO_TYPE_STRING_GOOGLE:Ljava/lang/String; = "Google"

.field private static final MMJ_SSO_TYPE_STRING_MICROSOFT:Ljava/lang/String; = "Microsoft"

.field private static consumerMsgKey:[I

.field private static convertKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 273
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Register_Failed_AddrOrPass:I

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Disconnect_Error:I

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Error_Login_Limit_Exeption:I

    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Register_Already:I

    sget v4, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Not_Login_Exception:I

    sget v5, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Register_Invalid_Email:I

    sget v6, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Register_Input_Email:I

    sget v7, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Error_Alredy_Withdrawal_Exeption:I

    filled-new-array/range {v0 .. v7}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->convertKey:[I

    .line 283
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJID_CABINET_USER_MSG_REGISTER_FAILED_ADDRORPASS:I

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJID_CABINET_USER_SYSOP_DISCONNECT_MSG2:I

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJID_CABINET_USER_MSG_REGISTER_INVALID_LOGIN:I

    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJID_CABINET_USER_MSG_REGISTER_ALREADY:I

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJID_CABINET_USER_MSG_NOT_LOGIN_EXCEPTION:I

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJID_CABINET_USER_MSG_REGISTER_INVALID_EMAIL:I

    sget v7, Lcom/metamoji/noteanytime/R$string;->MMJID_CABINET_USER_MSG_REGISTER_INPUT_EMAIL:I

    sget v8, Lcom/metamoji/noteanytime/R$string;->MMJID_CABINET_USER_MSG_REGISTER_INVALID_WITHDRAWAL:I

    filled-new-array/range {v1 .. v8}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->consumerMsgKey:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WipeLocalCache()V
    .locals 2

    .line 508
    :try_start_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->resetCurrentFolder()V

    const/4 v0, 0x0

    .line 510
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->clearAllDrive(Z)V

    .line 516
    invoke-static {}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->destroy()V

    .line 518
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->clearnupDiscardedPrivateDrives()V

    .line 520
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->saveDriveGroupsInfo(Ljava/util/List;)V

    .line 522
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->clearnupDiscardedDrives()V

    .line 524
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lb/LbLibraryItemManager;->handleItemsForLogout()V

    .line 527
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager;->SharedInstance()Lcom/metamoji/media/MediaUploadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager;->clearNeedsUploadDatas()V

    .line 528
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager2;->clearNeedsUploadDatas()V

    .line 531
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->clearCache()V

    .line 533
    invoke-static {}, Lcom/metamoji/media/video/VfVideoFileManager;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager;->cleanOnLogout()V

    .line 538
    invoke-static {}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->cleanCurrentEditing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 540
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 2

    if-nez p0, :cond_0

    const/16 p0, 0x64

    .line 97
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->showCabinetUserErrorAlertDialog(I)V

    return-void

    .line 98
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->isUnderMaintenance:Z

    if-eqz v0, :cond_1

    .line 100
    iget-object p0, p0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->maintMessage:Ljava/lang/String;

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return-void

    .line 103
    :cond_1
    iget v0, p0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, 0x75

    if-ne v0, v1, :cond_2

    const/4 p0, 0x0

    .line 105
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->logoutWithClearPasscode(Z)V

    return-void

    .line 110
    :cond_2
    iget v0, p0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, -0xc8

    if-eq v0, v1, :cond_3

    .line 111
    iget v0, p0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->showCabinetUserErrorAlertDialog(I)V

    .line 114
    :cond_3
    iget p0, p0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v0, 0x6a

    if-eq p0, v0, :cond_4

    const/16 v0, 0x9f

    if-eq p0, v0, :cond_4

    return-void

    .line 118
    :cond_4
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->showLoginPageWithoutLogout()V

    return-void
.end method

.method private static checkConvertKey(I)I
    .locals 3

    .line 309
    sget-object v0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->convertKey:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 312
    sget-object v2, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->convertKey:[I

    aget v2, v2, v1

    if-ne v2, p0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static convertConsumerMessage(I)I
    .locals 0

    return p0
.end method

.method public static forgetPassword(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 477
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    invoke-static {p0}, Lcom/metamoji/nt/cabinet/user/management/UserManagement;->isMailaddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 480
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJID_ALERT_NOT_SET_METAMOJIID:I

    invoke-static {p0, v1, v0}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 482
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->CabinetUserPasswordResetConfirmMessage:I

    new-instance v2, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$1;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$1;-><init>(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;)V

    const/4 p0, 0x1

    invoke-static {v0, v1, v2, p0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 478
    :cond_2
    :goto_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJID_CABINET_USER_MSG_REGISTER_INPUT_EMAIL:I

    invoke-static {p0, v1, v0}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static getCabinetUserErrorMessage(I)Ljava/lang/String;
    .locals 1

    .line 136
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_General_Error:I

    const/16 v0, -0x65

    if-eq p0, v0, :cond_e

    const/16 v0, -0x64

    if-eq p0, v0, :cond_d

    const/16 v0, 0x64

    if-eq p0, v0, :cond_c

    const/16 v0, 0x65

    if-eq p0, v0, :cond_b

    const/16 v0, 0x67

    if-eq p0, v0, :cond_a

    const/16 v0, 0x68

    if-eq p0, v0, :cond_9

    const/16 v0, 0x71

    if-eq p0, v0, :cond_8

    const/16 v0, 0x72

    if-eq p0, v0, :cond_7

    const/16 v0, 0x79

    if-eq p0, v0, :cond_6

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_5

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_4

    const/16 v0, 0x80

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9f

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    .line 267
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_General_Error:I

    goto/16 :goto_0

    .line 174
    :pswitch_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Error_Invalid_Productversion:I

    goto/16 :goto_0

    .line 169
    :pswitch_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Error_Invalid_Nickname:I

    goto/16 :goto_0

    .line 165
    :pswitch_2
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Register_Already:I

    goto/16 :goto_0

    .line 161
    :pswitch_3
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Not_Login_Exception:I

    goto/16 :goto_0

    .line 259
    :sswitch_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Msg_Invalid_IpAddress:I

    goto/16 :goto_0

    .line 255
    :sswitch_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Msg_Invalid_License:I

    goto :goto_0

    .line 263
    :sswitch_2
    sget p0, Lcom/metamoji/noteanytime/R$string;->Error_Msg_Class_Name_Already_Used:I

    goto :goto_0

    .line 215
    :sswitch_3
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdParticipate_NotInvited_Msg_Error:I

    goto :goto_0

    .line 211
    :sswitch_4
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Error_Message_DriveAlreadyDeleted_Text:I

    goto :goto_0

    .line 219
    :sswitch_5
    sget p0, Lcom/metamoji/noteanytime/R$string;->CabinetSdTrialCourseMaxDriveCount_Msg:I

    goto :goto_0

    .line 227
    :sswitch_6
    sget p0, Lcom/metamoji/noteanytime/R$string;->CabinetAnytimeLicenseExpiredException_Msg:I

    goto :goto_0

    .line 223
    :sswitch_7
    sget p0, Lcom/metamoji/noteanytime/R$string;->CabinetAnytimeLicenseInvalidException_Msg:I

    goto :goto_0

    .line 231
    :sswitch_8
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdDriveMsgPermission:I

    goto :goto_0

    .line 207
    :sswitch_9
    sget p0, Lcom/metamoji/noteanytime/R$string;->CabinetSdGuestLimitOver_Msg:I

    goto :goto_0

    .line 186
    :sswitch_a
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Error_Alredy_Withdrawal_Exeption:I

    goto :goto_0

    .line 145
    :sswitch_b
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Register_Failed_AddrOrPass:I

    goto :goto_0

    .line 243
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Logined_User_Limit_Over:I

    goto :goto_0

    .line 235
    :cond_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_UserMsgInvalidDriveName:I

    goto :goto_0

    .line 195
    :cond_2
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Error_Register_Invalid_LockUser:I

    goto :goto_0

    .line 251
    :cond_3
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Server_Under_Maintenance:I

    goto :goto_0

    .line 247
    :cond_4
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Not_Available_This_Account:I

    goto :goto_0

    .line 239
    :cond_5
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Too_New_ProductVersion:I

    goto :goto_0

    .line 190
    :cond_6
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Error_Invalid_New_Password:I

    goto :goto_0

    .line 182
    :cond_7
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Error_Login_Limit_Exeption:I

    goto :goto_0

    .line 178
    :cond_8
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Error_Access_Limit_Exeption:I

    goto :goto_0

    .line 157
    :cond_9
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Register_Invalid_Password:I

    goto :goto_0

    .line 153
    :cond_a
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Register_Invalid_Email:I

    goto :goto_0

    .line 149
    :cond_b
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Unsupported_Version_Exception:I

    goto :goto_0

    .line 141
    :cond_c
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_General_Error:I

    goto :goto_0

    .line 199
    :cond_d
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    goto :goto_0

    .line 203
    :cond_e
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Disconnect_Error:I

    .line 269
    :goto_0
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->convertConsumerMessage(I)I

    move-result p0

    .line 270
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0xca -> :sswitch_b
        0x75 -> :sswitch_a
        0x96 -> :sswitch_9
        0x97 -> :sswitch_8
        0x98 -> :sswitch_7
        0x99 -> :sswitch_6
        0x9a -> :sswitch_5
        0x9b -> :sswitch_4
        0x9c -> :sswitch_3
        0xde -> :sswitch_2
        0xe5 -> :sswitch_1
        0xe9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getLocalIp()Ljava/lang/String;
    .locals 6

    .line 727
    const-string v0, "Failed to get the local IP address."

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    if-nez v2, :cond_0

    .line 729
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-object v1

    .line 733
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 735
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 736
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 737
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 738
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 740
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    .line 741
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_2
    return-object v1

    :catch_0
    move-exception v2

    .line 748
    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getSsoRequestURL(Lcom/metamoji/ui/cabinet/user/SsoType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 579
    :cond_0
    sget-object v1, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$3;->$SwitchMap$com$metamoji$ui$cabinet$user$SsoType:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SsoType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    return-object v0

    .line 585
    :cond_1
    const-string p0, "Microsoft"

    goto :goto_0

    .line 582
    :cond_2
    const-string p0, "Google"

    .line 590
    :goto_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getRootServer()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%ssso/oidcidpinfo?authentication=%s&cooperation=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isCheckForgotPassword(Ljava/lang/String;)Z
    .locals 1

    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_0

    .line 327
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/metamoji/noteanytime/R$string;->SystemOption_Msg_CabinetUser_ChangePassword_1:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isLoginErrorCode(I)Z
    .locals 1

    const/16 v0, 0x6a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x67

    if-eq p0, v0, :cond_1

    const/16 v0, 0x68

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x72

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x75

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9f

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x110

    if-eq p0, v0, :cond_1

    const/16 v0, 0x111

    if-eq p0, v0, :cond_1

    const/16 v0, 0x112

    if-eq p0, v0, :cond_1

    const/16 v0, 0x113

    if-eq p0, v0, :cond_1

    const/16 v0, 0x114

    if-eq p0, v0, :cond_1

    const/16 v0, 0x115

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isNeedRelogin()Z
    .locals 4

    .line 664
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 667
    new-instance v1, Lcom/metamoji/cs/dc/params/CsLoginParam;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/params/CsLoginParam;-><init>()V

    .line 668
    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsLoginParam;->coLoginId:Ljava/lang/String;

    .line 669
    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsLoginParam;->loginName:Ljava/lang/String;

    .line 670
    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsLoginParam;->userId:Ljava/lang/String;

    .line 671
    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsLoginParam;->email:Ljava/lang/String;

    .line 672
    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsLoginParam;->password:Ljava/lang/String;

    .line 673
    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsLoginParam;->qwd:Ljava/lang/String;

    .line 677
    invoke-static {v1}, Lcom/metamoji/cs/dc/CsCloudService;->executeLoginWithParam(Lcom/metamoji/cs/dc/params/CsLoginParam;)Lcom/metamoji/cs/dc/response/CsLoginResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 678
    iget v2, v1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isLoginErrorCode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 681
    iget v3, v1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    if-nez v3, :cond_1

    .line 683
    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->updateUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;Lcom/metamoji/cs/dc/response/CsLoginResponse;)V

    :cond_1
    return v2
.end method

.method public static isUseSync()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static jumpURL(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;I)V
    .locals 3

    .line 339
    const-string v0, "SystemOption_AboutUs"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 362
    invoke-static {p2}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 363
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 364
    new-instance p1, Lcom/metamoji/ui/dialog/PreviewView;

    invoke-direct {p1}, Lcom/metamoji/ui/dialog/PreviewView;-><init>()V

    const/4 p2, 0x1

    .line 365
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/PreviewView;->setHeaderButton(Z)V

    .line 366
    invoke-virtual {p1, p3}, Lcom/metamoji/ui/dialog/PreviewView;->setTitle(I)V

    .line 367
    invoke-virtual {p1, p0}, Lcom/metamoji/ui/dialog/PreviewView;->setUrl(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/PreviewView;->safeShow(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 350
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 351
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 352
    sget p3, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 353
    sget p3, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 355
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, p2}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 356
    invoke-virtual {p1, p0, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static logOperation(ILjava/lang/String;)V
    .locals 2

    .line 551
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->InspectionLog:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/dvm/DvmUtil;->logOperation(ILjava/lang/String;)V

    .line 559
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 560
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance p1, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$2;

    invoke-direct {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$2;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static parseSsoResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 605
    :cond_0
    const-string v1, "mmjsso://oidcsuccess?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 609
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 610
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->parseURLQuery(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 611
    const-string v1, "cooperation"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 615
    :cond_2
    const-string p1, "code"

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 619
    :cond_3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static showCabinetUserErrorAlertDialog(I)V
    .locals 0

    .line 131
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->getCabinetUserErrorMessage(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return-void
.end method

.method public static showLoginDlgWithAfterAction(Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;Landroidx/fragment/app/FragmentActivity;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 383
    invoke-interface {p0, v0}, Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;->action(Z)V

    return-void

    .line 388
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 389
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 390
    iget v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 391
    const-string v1, "isMMJIDSetupFinished"

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 394
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->updateUserInfoUseSync(Z)V

    .line 396
    :cond_2
    invoke-interface {p0, v0}, Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;->action(Z)V

    return-void

    .line 400
    :cond_3
    const-string v1, "MetaMoJi_ID_Guide_Hide"

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 402
    invoke-interface {p0, v0}, Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;->action(Z)V

    return-void

    .line 407
    :cond_4
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 408
    invoke-interface {p0, v0}, Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;->action(Z)V

    return-void

    .line 413
    :cond_5
    new-instance p1, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;

    invoke-direct {p1, v0}, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;-><init>(Z)V

    .line 414
    invoke-static {p1}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetMaitenanceInfoWitParams(Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;)Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    move-result-object p1

    if-eqz p1, :cond_7

    if-eqz p1, :cond_6

    .line 415
    iget-boolean v1, p1, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->isUnderMaintenance:Z

    if-nez v1, :cond_7

    iget p1, p1, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->errorCode:I

    const/16 v1, -0x64

    if-ne p1, v1, :cond_6

    goto :goto_0

    .line 422
    :cond_6
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object p1

    .line 423
    invoke-virtual {p1, p0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->setAfterAction(Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;)V

    .line 424
    invoke-virtual {p1, v2}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->setStartupMode(Z)V

    .line 425
    new-instance p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    invoke-direct {p0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;-><init>()V

    .line 427
    sget-object v1, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    invoke-virtual {p0, v1}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->updateUserInfoCacheSync(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 p0, 0x0

    .line 428
    invoke-virtual {p1, p0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->setAfterAction(Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;)V

    .line 429
    invoke-virtual {p1, v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->setStartupMode(Z)V

    return-void

    .line 418
    :cond_7
    :goto_0
    invoke-interface {p0, v0}, Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;->action(Z)V

    return-void
.end method

.method private static updateUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;Lcom/metamoji/cs/dc/response/CsLoginResponse;)V
    .locals 5

    const/4 v0, 0x1

    .line 691
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    .line 692
    iget-object v1, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyId:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 693
    iget-object v1, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->restHost:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->restHost:Ljava/lang/String;

    .line 694
    iget-object v1, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyName:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    .line 695
    iget-boolean v1, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isOnPremise:Z

    iput-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    .line 696
    iget-boolean v1, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isClassRoom:Z

    iput-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isClassRoom:Z

    .line 697
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 698
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 699
    iget-object v1, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 700
    iget-object v1, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->maintCheckURL:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->maintenanceCheckURL:Ljava/lang/String;

    .line 702
    iget v1, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyVersion:I

    if-eqz v1, :cond_0

    .line 703
    iget v1, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyVersion:I

    iput v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    goto :goto_0

    .line 705
    :cond_0
    iput v0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    .line 707
    :goto_0
    iget-wide v1, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverVersion:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    .line 708
    iget-wide v0, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverVersion:D

    double-to-int p1, v0

    iput p1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    goto :goto_1

    .line 710
    :cond_1
    iput v0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    .line 712
    :goto_1
    iget p1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 713
    iput v0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    .line 716
    :cond_2
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p1

    .line 717
    invoke-virtual {p1, p0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    return-void
.end method

.method public static updateUserInfoUseSync(Z)V
    .locals 2

    .line 453
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    iput-boolean p0, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->useSync:Z

    .line 460
    invoke-virtual {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 463
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 464
    instance-of v1, v0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz v1, :cond_1

    .line 465
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 469
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->clearAllDrive(Z)V

    .line 470
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->reloadAllView(Landroidx/fragment/app/FragmentActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
