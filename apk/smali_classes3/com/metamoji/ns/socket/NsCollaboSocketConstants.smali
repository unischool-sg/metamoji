.class public Lcom/metamoji/ns/socket/NsCollaboSocketConstants;
.super Ljava/lang/Object;
.source "NsCollaboSocketConstants.java"


# static fields
.field public static final BOOTHID_CHAT:Ljava/lang/String; = "CHAT"

.field public static final BOOTHID_RECORDING:Ljava/lang/String; = "RECORDING"

.field public static final BOOTHID_ROOM:Ljava/lang/String; = "ROOM"

.field public static final BOOTHID_STATUS:Ljava/lang/String; = "*"

.field public static final BUFFER_SIZE:I = 0x19000

.field public static final CMD_ADDNOTIFYBOOTHUPDATED_FORMAT:Ljava/lang/String; = "cmd:AddNotifyBoothUpdated bidseq:%s\n"

.field public static final CMD_ADDNOTIFYBOOTHUPDATED_PARAM_FORMAT:Ljava/lang/String; = "%s=%d"

.field public static final CMD_ADDNOTIFYBOOTHUPDATED_RESULT:Ljava/lang/String; = "AddNotifyBoothUpdatedResult"

.field public static final CMD_ATTACHBOOTH_FORMAT:Ljava/lang/String; = "cmd:AttachBooth bid:%s last:%d\n"

.field public static final CMD_ATTACHBOOTH_RESULT:Ljava/lang/String; = "AttachBoothResult"

.field public static final CMD_BOOTHUPDATED:Ljava/lang/String; = "BoothUpdated"

.field public static final CMD_CHANGEMEMBERSMODE_FORMAT:Ljava/lang/String; = "cmd:ChangeMembersMode userID:%s key:%s value:%s\n"

.field public static final CMD_CHANGEMEMBERSMODE_RESULT:Ljava/lang/String; = "ChangeMembersModeResult"

.field public static final CMD_CHANGEMEMBERSPROPERTY_ALLUSER_FORMAT:Ljava/lang/String; = "cmd:ChangeMembersProperty key:%s value:%s\n"

.field public static final CMD_CHANGEMEMBERSPROPERTY_FORMAT:Ljava/lang/String; = "cmd:ChangeMembersProperty userID:%s key:%s value:%s\n"

.field public static final CMD_CHANGEMEMBERSPROPERTY_RESULT:Ljava/lang/String; = "ChangeMembersPropertyResult"

.field public static final CMD_CHANGEMODE2_FORMAT:Ljava/lang/String; = "cmd:ChangeMode2 %s\n"

.field public static final CMD_CHANGEMODE2_PARAM_CANCEL_START:Ljava/lang/String; = "manualStartTime:-3"

.field public static final CMD_CHANGEMODE2_PARAM_END:Ljava/lang/String; = "manualEndTime:-2"

.field public static final CMD_CHANGEMODE2_PARAM_START:Ljava/lang/String; = "manualStartTime:-2"

.field public static final CMD_CHANGEMODE2_RESULT:Ljava/lang/String; = "ChangeMode2Result"

.field public static final CMD_CHANGEMODE_FORMAT:Ljava/lang/String; = "cmd:ChangeMode key:%s value:%s\n"

.field public static final CMD_CHANGEMODE_RESULT:Ljava/lang/String; = "ChangeModeResult"

.field public static final CMD_CHANGEPROPERTY_FORMAT:Ljava/lang/String; = "cmd:ChangeProperty key:%s value:%s\n"

.field public static final CMD_CHANGEPROPERTY_RESULT:Ljava/lang/String; = "ChangePropertyResult"

.field public static final CMD_DETACHBOOTH_FORMAT:Ljava/lang/String; = "cmd:DetachBooth bid:%s\n"

.field public static final CMD_DETACHBOOTH_RESULT:Ljava/lang/String; = "DetachBoothResult"

.field public static final CMD_FINISH:Ljava/lang/String; = "Finish"

.field public static final CMD_LOGINROOM_FORMAT:Ljava/lang/String; = "cmd:LoginRoom rid:%s did:%s sid:%s name:%s\n"

.field public static final CMD_LOGINROOM_RESULT:Ljava/lang/String; = "LoginRoomResult"

.field public static final CMD_LOGOUTROOM_FORMAT:Ljava/lang/String; = "cmd:LogoutRoom rid:%s\n"

.field public static final CMD_LOGOUTROOM_RESULT:Ljava/lang/String; = "LogoutRoomResult"

.field public static final CMD_MODE2CHANGED:Ljava/lang/String; = "Mode2Changed"

.field public static final CMD_MODECHANGED:Ljava/lang/String; = "ModeChanged"

.field public static final CMD_OPENCONNECTION:Ljava/lang/String; = "OpenConnection"

.field public static final CMD_PING:Ljava/lang/String; = "Ping"

.field public static final CMD_PINGRESULT_FORMAT:Ljava/lang/String; = "cmd:PingResult\n"

.field public static final CMD_POSTDATA:Ljava/lang/String; = "PostData"

.field public static final CMD_POSTDATA_BINARY_FORMAT:Ljava/lang/String; = "cmd:PostData loop:%d save:%d rsize:%s binary:%d\n"

.field public static final CMD_POSTDATA_FORMAT:Ljava/lang/String; = "cmd:PostData loop:%d save:%d rsize:%s a: data:%s z:\n"

.field public static final CMD_POSTDATA_RESULT:Ljava/lang/String; = "PostDataResult"

.field public static final CMD_POSTMESSAGE:Ljava/lang/String; = "PostMessage"

.field public static final CMD_PROPERTYCHANGED:Ljava/lang/String; = "PropertyChanged"

.field public static final CMD_ROLECHANGED:Ljava/lang/String; = "RoleChanged"

.field public static final CMD_ROOMUPDATED:Ljava/lang/String; = "RoomUpdated"

.field public static final CMD_SCORECHANGED:Ljava/lang/String; = "ScoreChanged"

.field public static final CMD_SETTINGCHANGED:Ljava/lang/String; = "SettingChanged"

.field public static final CONNECTING_CHECK_INTERVAL:I = 0x1e

.field public static final CONNECTING_TIMEOUT:I = 0xb4

.field public static final MODE2_CANCANCELREPORT:I = 0x40

.field public static final MODE2_CANREPORT:I = 0x10

.field public static final MODE2_NONE:I = 0x0

.field public static final MODE2_READ:I = 0x1

.field public static final MODE2_WRITE:I = 0x2

.field public static final MODE_KEY_CLERK:Ljava/lang/String; = "clerk"

.field public static final MODE_KEY_GUEST:Ljava/lang/String; = "guest"

.field public static final MODE_KEY_LOG:Ljava/lang/String; = "log"

.field public static final MODE_KEY_OWNER:Ljava/lang/String; = "owner"

.field public static final MODE_KEY_PRESENTER:Ljava/lang/String; = "presenter"

.field public static final MODE_KEY_SCHOOL_TEACHER:Ljava/lang/String; = "teacher"

.field public static final MODE_KEY_SPEAKER:Ljava/lang/String; = "speaker"

.field public static final MODE_VAL_DISABLE:Ljava/lang/String; = "disable"

.field public static final MODE_VAL_ENABLE:Ljava/lang/String; = "enable"

.field public static final MODE_VAL_NONE:Ljava/lang/String; = "none"

.field public static final PACKETNO_FORMAT:Ljava/lang/String; = "C%d"

.field public static final PACKET_FORMAT:Ljava/lang/String; = "\n%s\t%s\t%s"

.field public static final PROP_KEY_CURRENT_PAGE:Ljava/lang/String; = "currentPage"

.field public static final PROP_KEY_EDITTEXTUNIT:Ljava/lang/String; = "editTextUnit"

.field public static final PROP_KEY_PRIVATELAYER:Ljava/lang/String; = "privateLayer"

.field public static final PROP_KEY_RECORDING_SOUND_UNIT:Ljava/lang/String; = "recordingSoundUnit"

.field public static final PROP_KEY_SCHOOL_LOCK_SCREEN:Ljava/lang/String; = "schoolLockScreen"

.field public static final PROP_KEY_SCHOOL_PERSONAL_STATUS:Ljava/lang/String; = "schoolPersonalStatus"

.field public static final PROP_KEY_VIEWINGLAYER:Ljava/lang/String; = "viewingLayer"

.field public static final PROP_KEY_VIEWINGPOSITION:Ljava/lang/String; = "viewingPosition"

.field public static final PROP_VALUE_RECORDING_SOUND_UINT_IS_START:I = 0x0

.field public static final PROP_VALUE_RECORDING_SOUND_UINT_UNIT_ID:I = 0x1

.field public static final PROP_VAL_FALSE:Ljava/lang/String; = "false"

.field public static final PROP_VAL_SCHOOL_PSESONAL_STATUS_DELIMITA:Ljava/lang/String; = "="

.field public static final PROP_VAL_SCHOOL_PSESONAL_STATUS_DOIT:Ljava/lang/String; = "doit"

.field public static final PROP_VAL_SCHOOL_PSESONAL_STATUS_HELP:Ljava/lang/String; = "help"

.field public static final PROP_VAL_SCHOOL_PSESONAL_STATUS_NOTYET:Ljava/lang/String; = "notyet"

.field public static final PROP_VAL_SCHOOL_PSESONAL_STATUS_OFFLINE:Ljava/lang/String; = "offline"

.field public static final PROP_VAL_TRUE:Ljava/lang/String; = "true"

.field public static final ROLE_KEY_PRESENTER:Ljava/lang/String; = "presenter"

.field public static final ROLE_KEY_SPEAKER:Ljava/lang/String; = "speaker"

.field public static final ROLE_VAL_DISABLE:Ljava/lang/String; = "disable"

.field public static final ROLE_VAL_ENABLE:Ljava/lang/String; = "enable"

.field public static final ROOMMODE_DELETED:Ljava/lang/String; = "deleted"

.field public static final ROOMMODE_FREE:Ljava/lang/String; = "free"

.field public static final ROOMMODE_LOCKOUT:Ljava/lang/String; = "lockout"

.field public static final ROOMMODE_READONLY:Ljava/lang/String; = "readonly"

.field public static final ROOMTYPE_CASUAL:Ljava/lang/String; = "casual"

.field public static final ROOMTYPE_FORMAL:Ljava/lang/String; = "formal"

.field public static final ROOMTYPE_LIMITED:Ljava/lang/String; = "limited"

.field public static final ROOMULDATED_VALUE_VAL_LOGIN:Ljava/lang/String; = "login"

.field public static final ROOMULDATED_VALUE_VAL_LOGOUT:Ljava/lang/String; = "logout"

.field public static final ROOMULDATED_VALUE_VAL_MODE:Ljava/lang/String; = "mode"

.field public static final ROOMULDATED_VALUE_VAL_PROP:Ljava/lang/String; = "prop"

.field public static final ROOMULDATED_VALUE_VAL_ROLE:Ljava/lang/String; = "role"

.field public static final ROOMUPDATED_KEY_VAL_RMODE:Ljava/lang/String; = "rmode"

.field public static final ROOMUPDATED_KEY_VAL_RTYPE:Ljava/lang/String; = "rtype"

.field public static final ROOMUPDATED_KEY_VAL_USER:Ljava/lang/String; = "user"

.field public static final SEPARATOR_EQUAL:Ljava/lang/String; = "="

.field public static final SEPARATOR_KEY:Ljava/lang/String; = " "

.field public static final SEPARATOR_PACKET:Ljava/lang/String; = "\t"

.field public static final SEPARATOR_VALUE:Ljava/lang/String; = ":"

.field public static final SOCKET_KEY_AFTER_MODE2:Ljava/lang/String; = "afterMode2"

.field public static final SOCKET_KEY_BEFORE_MODE2:Ljava/lang/String; = "beforeMode2"

.field public static final SOCKET_KEY_BINARY:Ljava/lang/String; = "binary"

.field public static final SOCKET_KEY_BINARYDATA:Ljava/lang/String; = "binaryData"

.field public static final SOCKET_KEY_BOOTHID:Ljava/lang/String; = "bid"

.field public static final SOCKET_KEY_COMMAND:Ljava/lang/String; = "cmd"

.field public static final SOCKET_KEY_DATA:Ljava/lang/String; = "data"

.field public static final SOCKET_KEY_DATE:Ljava/lang/String; = "date"

.field public static final SOCKET_KEY_DCID:Ljava/lang/String; = "dcid"

.field public static final SOCKET_KEY_ENDREPORT_MODE2:Ljava/lang/String; = "endReportMode2"

.field public static final SOCKET_KEY_ENDTIME:Ljava/lang/String; = "endTime"

.field public static final SOCKET_KEY_KEY:Ljava/lang/String; = "key"

.field public static final SOCKET_KEY_KEY1:Ljava/lang/String; = "key1"

.field public static final SOCKET_KEY_KEY2:Ljava/lang/String; = "key2"

.field public static final SOCKET_KEY_LOCK_MODE2:Ljava/lang/String; = "lockMode2"

.field public static final SOCKET_KEY_LOOP:Ljava/lang/String; = "loop"

.field public static final SOCKET_KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final SOCKET_KEY_MODE:Ljava/lang/String; = "mode"

.field public static final SOCKET_KEY_MODE2:Ljava/lang/String; = "mode2"

.field public static final SOCKET_KEY_MSG:Ljava/lang/String; = "msg"

.field public static final SOCKET_KEY_NAME:Ljava/lang/String; = "name"

.field public static final SOCKET_KEY_NOW:Ljava/lang/String; = "now"

.field public static final SOCKET_KEY_PROP:Ljava/lang/String; = "prop"

.field public static final SOCKET_KEY_REMAND_MODE2:Ljava/lang/String; = "remandMode2"

.field public static final SOCKET_KEY_REPORT_MODE2:Ljava/lang/String; = "reportMode2"

.field public static final SOCKET_KEY_ROLE:Ljava/lang/String; = "role"

.field public static final SOCKET_KEY_ROOMID:Ljava/lang/String; = "rid"

.field public static final SOCKET_KEY_ROOMMODE:Ljava/lang/String; = "rmode"

.field public static final SOCKET_KEY_ROOMSETTING:Ljava/lang/String; = "setting"

.field public static final SOCKET_KEY_ROOMTYPE:Ljava/lang/String; = "rtype"

.field public static final SOCKET_KEY_SAVE:Ljava/lang/String; = "save"

.field public static final SOCKET_KEY_SELF:Ljava/lang/String; = "self"

.field public static final SOCKET_KEY_SEQ:Ljava/lang/String; = "seq"

.field public static final SOCKET_KEY_STARTEND:Ljava/lang/String; = "startEnd"

.field public static final SOCKET_KEY_STARTTIME:Ljava/lang/String; = "startTime"

.field public static final SOCKET_KEY_STATUS:Ljava/lang/String; = "status"

.field public static final SOCKET_KEY_TESTING_MODE2:Ljava/lang/String; = "testingMode2"

.field public static final SOCKET_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final SOCKET_KEY_USERID:Ljava/lang/String; = "uid"

.field public static final SOCKET_KEY_VALUE:Ljava/lang/String; = "value"

.field public static final SPLIT_SEPARATOR_COMMA:Ljava/lang/String; = ","

.field public static final SPLIT_SEPARATOR_EQUAL:Ljava/lang/String; = "="

.field public static final STARTEND_AFTER:I = 0x2

.field public static final STARTEND_BEFORE:I = 0x0

.field public static final STARTEND_TESTING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
