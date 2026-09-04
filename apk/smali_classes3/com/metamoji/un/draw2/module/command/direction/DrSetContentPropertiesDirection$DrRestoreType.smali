.class final enum Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;
.super Ljava/lang/Enum;
.source "DrSetContentPropertiesDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrRestoreType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

.field public static final enum NORMAL:Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

.field public static final enum REVERSE:Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;
    .locals 2

    .line 36
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;->NORMAL:Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;->REVERSE:Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    filled-new-array {v0, v1}, [Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;->NORMAL:Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    .line 38
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    const-string v1, "REVERSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;->REVERSE:Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    .line 36
    invoke-static {}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;->$values()[Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;->$VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 36
    const-class v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;
    .locals 1

    .line 36
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;->$VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    return-object v0
.end method
