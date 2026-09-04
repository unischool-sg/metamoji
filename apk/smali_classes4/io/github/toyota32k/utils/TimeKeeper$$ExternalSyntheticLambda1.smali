.class public final synthetic Lio/github/toyota32k/utils/TimeKeeper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/github/toyota32k/utils/TimeKeeper;


# direct methods
.method public synthetic constructor <init>(Lio/github/toyota32k/utils/TimeKeeper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper$$ExternalSyntheticLambda1;->f$0:Lio/github/toyota32k/utils/TimeKeeper;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/toyota32k/utils/TimeKeeper$$ExternalSyntheticLambda1;->f$0:Lio/github/toyota32k/utils/TimeKeeper;

    invoke-static {v0}, Lio/github/toyota32k/utils/TimeKeeper;->logger_delegate$lambda$0(Lio/github/toyota32k/utils/TimeKeeper;)Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    return-object v0
.end method
