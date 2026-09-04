.class public final synthetic Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/metamoji/ui/cabinet/ScCalendarList;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/ScCalendarList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda4;->f$2:Lcom/metamoji/ui/cabinet/ScCalendarList;

    return-void
.end method


# virtual methods
.method public final syncEnd(Z)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda4;->f$2:Lcom/metamoji/ui/cabinet/ScCalendarList;

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/ui/cabinet/ScCalendarList;->onSelect$lambda$11(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/ScCalendarList;Z)Z

    move-result p1

    return p1
.end method
