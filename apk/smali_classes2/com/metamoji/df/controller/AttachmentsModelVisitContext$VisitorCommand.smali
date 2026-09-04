.class public final enum Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;
.super Ljava/lang/Enum;
.source "AttachmentsModelVisitContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/AttachmentsModelVisitContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VisitorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

.field public static final enum CollectTicket:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

.field public static final enum ReplaceTicket:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;
    .locals 2

    .line 12
    sget-object v0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->CollectTicket:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    sget-object v1, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->ReplaceTicket:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    filled-new-array {v0, v1}, [Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    const-string v1, "CollectTicket"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->CollectTicket:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    .line 14
    new-instance v0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    const-string v1, "ReplaceTicket"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->ReplaceTicket:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    .line 12
    invoke-static {}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->$values()[Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    move-result-object v0

    sput-object v0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->$VALUES:[Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    const-class v0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;
    .locals 1

    .line 12
    sget-object v0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->$VALUES:[Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    invoke-virtual {v0}, [Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    return-object v0
.end method
