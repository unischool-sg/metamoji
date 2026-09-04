.class public final synthetic Lcom/metamoji/ui/cabinet/ScCabinetCalendarView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/cabinet/ScCalendarModel;

.field public final synthetic f$1:Lcom/metamoji/ui/cabinet/ScCabinetCalendarView;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/cabinet/ScCalendarModel;Lcom/metamoji/ui/cabinet/ScCabinetCalendarView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCabinetCalendarView$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ScCabinetCalendarView$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/ui/cabinet/ScCabinetCalendarView;

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCabinetCalendarView$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ScCabinetCalendarView$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/ui/cabinet/ScCabinetCalendarView;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/ScCabinetCalendarView;->pick$lambda$16$lambda$15(Lcom/metamoji/ui/cabinet/ScCalendarModel;Lcom/metamoji/ui/cabinet/ScCabinetCalendarView;Landroid/widget/DatePicker;III)V

    return-void
.end method
