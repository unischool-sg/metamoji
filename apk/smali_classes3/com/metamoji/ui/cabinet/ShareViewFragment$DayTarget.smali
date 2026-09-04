.class final enum Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;
.super Ljava/lang/Enum;
.source "ShareViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DayTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

.field public static final enum LaterDay:Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

.field public static final enum Today:Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

.field public static final enum Tomorrow:Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;
    .locals 3

    .line 303
    sget-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;->Today:Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    sget-object v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;->Tomorrow:Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    sget-object v2, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;->LaterDay:Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 304
    new-instance v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    const-string v1, "Today"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;->Today:Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    .line 305
    new-instance v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    const-string v1, "Tomorrow"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;->Tomorrow:Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    .line 306
    new-instance v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    const-string v1, "LaterDay"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;->LaterDay:Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    .line 303
    invoke-static {}, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;->$values()[Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;->$VALUES:[Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

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

    .line 303
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 303
    const-class v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;
    .locals 1

    .line 303
    sget-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;->$VALUES:[Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    invoke-virtual {v0}, [Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;

    return-object v0
.end method
