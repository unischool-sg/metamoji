.class public Lcom/metamoji/un/draw2/unit/external/DrUnExternalDefinitions;
.super Ljava/lang/Object;
.source "DrUnExternalDefinitions.java"


# static fields
.field public static final CMD_ADD_CALENDAR_UNIT:Lcom/metamoji/nt/NtCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sput-object v0, Lcom/metamoji/un/draw2/unit/external/DrUnExternalDefinitions;->CMD_ADD_CALENDAR_UNIT:Lcom/metamoji/nt/NtCommand;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOthersElementsIgnoreSettingChangedEventContext(Lcom/metamoji/df/controller/BroadcastContext;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 24
    :cond_0
    instance-of p0, p0, Lcom/metamoji/ns/NsRoomSettingChangedEventContext;

    return p0
.end method

.method public static getOthersElementsIgnoreSettingFromEventContext(Lcom/metamoji/df/controller/BroadcastContext;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 38
    :cond_0
    instance-of v1, p0, Lcom/metamoji/ns/NsRoomSettingChangedEventContext;

    if-eqz v1, :cond_1

    .line 39
    check-cast p0, Lcom/metamoji/ns/NsRoomSettingChangedEventContext;

    iget-boolean p0, p0, Lcom/metamoji/ns/NsRoomSettingChangedEventContext;->allowToEditOthersWritings:Z

    return p0

    :cond_1
    return v0
.end method
