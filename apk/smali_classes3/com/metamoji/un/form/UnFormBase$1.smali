.class synthetic Lcom/metamoji/un/form/UnFormBase$1;
.super Ljava/lang/Object;
.source "UnFormBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/form/UnFormBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$df$controller$AttachmentsModelVisitContext$VisitorCommand:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 741
    invoke-static {}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->values()[Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$1;->$SwitchMap$com$metamoji$df$controller$AttachmentsModelVisitContext$VisitorCommand:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->CollectTicket:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    invoke-virtual {v1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/un/form/UnFormBase$1;->$SwitchMap$com$metamoji$df$controller$AttachmentsModelVisitContext$VisitorCommand:[I

    sget-object v1, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->ReplaceTicket:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    invoke-virtual {v1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
